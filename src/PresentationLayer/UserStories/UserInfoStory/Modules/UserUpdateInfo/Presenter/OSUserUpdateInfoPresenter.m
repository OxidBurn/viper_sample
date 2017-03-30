//
//  OSUserUpdateInfoPresenter.m
//  ViperSampleProject
//
//  Created by Nikolay Chaban on 29/03/2017.
//  Copyright © 2017 OnSight. All rights reserved.
//

#import "OSUserUpdateInfoPresenter.h"

// Classes
#import "OSUserUpdateInfoViewInput.h"
#import "OSUserUpdateInfoInteractorInput.h"
#import "OSUserUpdateInfoRouterInput.h"
#import "UserInfoPlainObject.h"

@interface OSUserUpdateInfoPresenter()

// properties

@property (strong, nonatomic) UserInfoPlainObject* userInfo;

@end

@implementation OSUserUpdateInfoPresenter


#pragma mark - Methods OSUserUpdateInfoViewOutput -

- (void) didTriggerViewReadyEvent 
{
	[self.view setupInitialState];
    
    [self.view configureViewWithUserInfo: self.userInfo];
}

- (void) didUpdateUserInfo
{
    /**
     @author Nikolay Chaban
     
     Call all view input methods for getting updated info
     */
    [self updateUserInfo];
    
    [self.interactor updateUserInfoInDB: self.userInfo];
}

#pragma mark - Methods OSUserUpdateInfoModuleInput -

- (void) configureModuleWithUser: (UserInfoPlainObject*) user
{
    self.userInfo = user;
}


#pragma mark - Methods OSUserUpdateInfoInteractorOutput -

- (void) didUpdateUserInfoInDB
{
    [self.moduleOutput didUpdateUserInfo];
}


#pragma mark - Internal methods -

- (void) updateUserInfo
{
    self.userInfo.fullName = [self.view obtainNewFullName];
    self.userInfo.email    = [self.view obtainNewEmail];
    self.userInfo.username = [self.view obtainNewUserName];
}


#pragma mark - Methods OSUserUpdateInfoModuleInput -

- (void) configureModule 
{
	// Starting configuration of the module, which dependent to the view state
}


@end
