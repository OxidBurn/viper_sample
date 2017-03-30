//
//  OSUserUpdateInfoViewController.m
//  ViperSampleProject
//
//  Created by Nikolay Chaban on 29/03/2017.
//  Copyright © 2017 OnSight. All rights reserved.
//

#import "OSUserUpdateInfoViewController.h"

// Classes
#import "OSUserUpdateInfoViewOutput.h"
#import "UserInfoPlainObject.h"

@interface OSUserUpdateInfoViewController()

// properties

@property (weak, nonatomic) IBOutlet UITextField* userNameField;
@property (weak, nonatomic) IBOutlet UITextField* fullNameField;
@property (weak, nonatomic) IBOutlet UITextField* emailField;

// methods

- (IBAction) clickUpdateBtn: (UIButton*) sender;

@end


@implementation OSUserUpdateInfoViewController


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



#pragma mark - Methods OSUserUpdateInfoViewInput -

- (void) setupInitialState 
{
	// In this method there is setup of the initial view parameter, which depend from controller life cycle (creation of elements, animation, etc.)
}

- (void) configureViewWithUserInfo: (UserInfoPlainObject*) info
{
    self.userNameField.text = info.username;
    self.fullNameField.text = info.fullName;
    self.emailField.text    = info.email;
}

- (NSString*) obtainNewEmail
{
    return self.emailField.text;
}

- (NSString*) obtainNewFullName
{
    return self.fullNameField.text;
}

- (NSString*) obtainNewUserName
{
    return self.userNameField.text;
}


#pragma mark - Actions -

- (IBAction) clickUpdateBtn: (UIButton*) sender
{
    [self.output didUpdateUserInfo];
}

@end
