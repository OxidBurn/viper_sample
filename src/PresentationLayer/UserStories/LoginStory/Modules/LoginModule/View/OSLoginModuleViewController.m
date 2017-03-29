//
//  OSLoginModuleViewController.m
//  ViperSampleProject
//
//  Created by Nikolay Chaban on 18/03/2017.
//  Copyright © 2017 OnSight. All rights reserved.
//

#import "OSLoginModuleViewController.h"

// Classes
#import "OSLoginModuleViewOutput.h"
#import "AlertsFactory.h"

@interface OSLoginModuleViewController()

// properties
@property (unsafe_unretained, nonatomic) IBOutlet UITextField* loginTextField;
@property (unsafe_unretained, nonatomic) IBOutlet UITextField* passTextField;

// methods
- (IBAction) didClickLoginButton: (UIButton*) sender;
- (IBAction) didClickRegisterButton: (UIButton*) sender;
- (IBAction) didClickAllUsers: (UIButton*) sender;

@end


@implementation OSLoginModuleViewController


#pragma mark - Life cycle methods -

- (void) viewDidLoad 
{
	[super viewDidLoad];

    [self.output setupView];
    
	[self.output didTriggerViewReadyEvent];
}


#pragma mark - Memory management -

- (void) didReceiveMemoryWarning 
{
    NSLog(@"didReceiveMemoryWarning");

    [super didReceiveMemoryWarning];
}



#pragma mark - Methods OSLoginModuleViewInput -

- (void) setupInitialState 
{
	// In this method there is setup of the initial view parameter, which depend from controller life cycle (creation of elements, animation, etc.)
}

- (void) getDataWithResultBlock: (LoginModuleViewLoginDataResultBlock) resultBlock
{
    if ( resultBlock )
        resultBlock(self.loginTextField.text, self.passTextField.text);
}


#pragma mark - Mehtods OSLoginModuleViewOutput -

- (void) showLoginSuccessMessage
{
    /**
     @author Nikolay Chaban
     
     For now showing success alert
     Then need to re-write for showing user info screen
     */
    [AlertsFactory showInformAlertControllerWithTitle: @"Success"
                                          withMessage: @"Login successful!"
                                       fromController: self];
}

- (void) showErrorWithLogin: (NSError*) error
{
    [AlertsFactory showInformAlertControllerWithTitle: @"Error"
                                          withMessage: error.localizedFailureReason
                                       fromController: self];
}


#pragma mark - Actions -

- (IBAction) didClickLoginButton: (UIButton*) sender
{
    [self.view endEditing: YES];
    
    [self.output sendLoginRequest];
}

- (IBAction) didClickRegisterButton: (UIButton*) sender
{
    [self.output instantiateRegisterButtonClicked];
}

- (IBAction) didClickAllUsers: (UIButton*) sender
{
    [self.output didTapShowAllUsers];
}

@end
