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
#import "AlertsFactory.h"

@interface OSRegisterModuleViewController()

// properties
@property (weak, nonatomic) IBOutlet UITextField* userNameField;
@property (weak, nonatomic) IBOutlet UITextField* passwordField;
@property (weak, nonatomic) IBOutlet UITextField* confirmPasswordField;
@property (weak, nonatomic) IBOutlet UITextField* fullNameField;
@property (weak, nonatomic) IBOutlet UITextField* emailField;
@property (weak, nonatomic) IBOutlet UIImageView *avatarImgView;
@property (nonatomic, strong) NSString* avatarPath;


// methods

- (IBAction) didRegisterButtonClicked: (UIButton*) sender;

- (IBAction) didTapSelectAvatar: (UITapGestureRecognizer*) sender;

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
	self.avatarImgView.userInteractionEnabled = YES;
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

- (NSString*) obtainEmail
{
    return self.emailField.text;
}

- (NSString*) obtainAvatar
{
    return self.avatarPath;
}

- (void) didFinishRegistrationWithSuccessOrError: (NSError*) error
{
    NSString* title   = @"";
    NSString* message = @"";
    
    if ( error )
    {
        title   = @"Warning";
        message = error.localizedFailureReason;
    }
    else
    {
        title   = @"Success";
        message = @"Registration perform with success!";
    }
    
    [AlertsFactory showInformAlertControllerWithTitle: title
                                          withMessage: message
                                       fromController: self];
}

- (void) updateAvatarPath: (NSString*) avatarPath
{
    self.avatarImgView.image = [UIImage imageNamed: avatarPath];
    self.avatarPath = avatarPath;
}


#pragma mark - Actions -

- (IBAction) didRegisterButtonClicked: (UIButton*) sender
{
    [self.output sendRegistrationRequest];
}

- (IBAction) didTapSelectAvatar: (UITapGestureRecognizer*) sender
{
    [self.output didTapAvatarImage];
}

@end
