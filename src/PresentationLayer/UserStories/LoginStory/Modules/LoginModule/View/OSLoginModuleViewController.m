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

@interface OSLoginModuleViewController()

// properties


// methods

@property (unsafe_unretained, nonatomic) IBOutlet UITextField* loginTextField;
@property (unsafe_unretained, nonatomic) IBOutlet UITextField* passTextField;

- (IBAction) didClickLoginButton: (UIButton*) sender;
- (IBAction) didClickRegisterButton: (UIButton*) sender;

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
    [self displayAlertWithTitle: @"Success"
                     andMessage: @"Login successful!"];
}

- (void) showErrorWithLogin: (NSError*) error
{
    [self displayAlertWithTitle: @"Error"
                     andMessage: error.localizedFailureReason];
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


#pragma mark - Internal methods -

//TODO: method need move to alert view factory
- (void) displayAlertWithTitle: (NSString*) title
                    andMessage: (NSString*) message
{
    UIAlertController* alertController = [UIAlertController alertControllerWithTitle: title
                                                                             message: message
                                                                      preferredStyle: UIAlertControllerStyleAlert];
    
    UIAlertAction* closeAction = [UIAlertAction actionWithTitle: @"Ok"
                                                          style: UIAlertActionStyleDefault
                                                        handler: ^(UIAlertAction * _Nonnull action) {}];
    
    [alertController addAction: closeAction];
    
    [self presentViewController: alertController
                       animated: YES
                     completion: nil];
}

@end
