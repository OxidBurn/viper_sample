//
//  OSRegisterModuleViewController.m
//  ViperSampleProject
//
//  Created by Nikolay Chaban on 18/03/2017.
//  Copyright © 2017 OnSight. All rights reserved.
//

#import "OSRegisterModuleViewController.h"

// Classes
#import "OSRegisterModuleViewOutput.h"

@interface OSRegisterModuleViewController()

// properties
@property (weak, nonatomic) IBOutlet UITextField *userNameField;
@property (weak, nonatomic) IBOutlet UITextField *passwordField;
@property (weak, nonatomic) IBOutlet UITextField *confirmPasswordField;
@property (weak, nonatomic) IBOutlet UITextField *fullNameField;

// methods

- (IBAction) didRegisterButtonClicked: (UIButton*) sender;

@end


@implementation OSRegisterModuleViewController


#pragma mark - Life cycle methods -

- (void) viewDidLoad 
{
	[super viewDidLoad];

	[self.output didTriggerViewReadyEvent];
}


#pragma mark - Memory management -

- (void) didReceiveMemoryWarning 
{
    NSLog(@"didReceiveMemoryWarning");

    [super didReceiveMemoryWarning];
}



#pragma mark - Methods OSRegisterModuleViewInput -

- (void) setupInitialState 
{
	// In this method there is setup of the initial view parameter, which depend from controller life cycle (creation of elements, animation, etc.)
}

- (NSString*) obtainUserName
{
    return self.userNameField.text;
}

- (NSString*) obtainUserPassword
{
    return self.passwordField.text;
}

- (NSString*) obtainUserConfirmPassword
{
    return self.confirmPasswordField.text;
}

- (NSString*) obtainFullName
{
    return self.fullNameField.text;
}

- (void) didFinishRegistrationWithSuccessOrError: (NSError*) error
{
    if ( error )
    {
        [self displayAlertWithTitle: @"Warning"
                         andMessage: error.localizedFailureReason];
    }
    else
    {
        [self displayAlertWithTitle: @"Success"
                         andMessage: @"Registration perform with success!"];
    }
}


#pragma mark - Actions -

- (IBAction) didRegisterButtonClicked: (UIButton*) sender
{
    [self.output sendRegistrationRequest];
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
