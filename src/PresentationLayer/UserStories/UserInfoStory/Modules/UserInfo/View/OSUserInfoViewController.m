//
//  OSUserInfoViewController.m
//  ViperSampleProject
//
//  Created by Valeria Mozghova on 28/03/2017.
//  Copyright © 2017 OnSight. All rights reserved.
//

#import "OSUserInfoViewController.h"

// Frameworks
#import <RamblerSegues/RamblerSegues.h>

// Classes
#import "OSUserInfoViewOutput.h"
#import "OSUserUpdateInfoModuleInput.h"

@interface OSUserInfoViewController() <RamblerEmbedSegueViewContainer>

// properties
@property (weak, nonatomic) IBOutlet UIImageView* userImgView;

@property (weak, nonatomic) IBOutlet UILabel* fullnameLabel;

@property (weak, nonatomic) IBOutlet UILabel *emailLabel;

@property (weak, nonatomic) IBOutlet UILabel *userNameLabel;

@property (weak, nonatomic) IBOutlet UIView* updateInfoView;

// methods


@end

@implementation OSUserInfoViewController


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


#pragma mark - Methods OSUserInfoViewInput -

- (void) setupInitialState 
{
	/**
	@author Valeria Mozghova
	
	In this method there is setup of the initial view parameter, 
	which depend from controller life cycle (creation of elements, animation, etc.)
	*/
}


/**
 Method for setting up view with initial configuration

 @param user - loggeg user
 */
- (void) setupInitialStateWithUser: (UserInfoPlainObject*) user
{
    self.fullnameLabel.text = user.fullName;
    self.userImgView.image  = [UIImage imageNamed : user.imagePath];
    self.emailLabel.text    = user.email;
    self.userNameLabel.text = user.username;
}

- (void) updateUserInfo: (UserInfoPlainObject*) user
{
    self.fullnameLabel.text = user.fullName;
    self.emailLabel.text    = user.email;
    self.userNameLabel.text = user.username;
}


#pragma mark - Methods RamblerSegue -

- (UIView*) viewForEmbedIdentifier: (NSString*) embedIdentifier
{
    return self.updateInfoView;
}

@end
