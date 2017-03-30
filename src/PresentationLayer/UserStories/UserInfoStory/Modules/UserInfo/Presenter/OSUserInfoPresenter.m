//
//  OSUserInfoPresenter.m
//  ViperSampleProject
//
//  Created by Valeria Mozghova on 28/03/2017.
//  Copyright © 2017 OnSight. All rights reserved.
//

#import "OSUserInfoPresenter.h"

// Classes
#import "OSUserInfoViewInput.h"
#import "OSUserInfoInteractorInput.h"
#import "OSUserInfoRouterInput.h"
#import "OSUserUpdateInfoModuleOutput.h"

@interface OSUserInfoPresenter() <OSUserUpdateInfoModuleOutput>

// properties

// methods

@end

@implementation OSUserInfoPresenter


#pragma mark - Methods OSUserInfoModuleInput -

- (void) configureModule 
{
	/**
	@author Valeria Mozghova
	
	Starting configuration of the module, which dependent to the view state
	*/
}

- (void) configureModuleWithUser: (UserInfoPlainObject*) user
{
    self.presenterStateStorage.userInfo = user;
}


#pragma mark - Methods OSUserInfoViewOutput -

- (void) didTriggerViewReadyEvent 
{
	[self.view setupInitialState];
    
    /**
     @author Nikolay Chaban
     
     Setup initial state of the view with passing user parameter
     */
    [self.view setupInitialStateWithUser: self.presenterStateStorage.userInfo];
    
    /**
     @author Nikolay Chaban
     
     Configuration of the embed container view of the Update User Info module
     */
    [self.router configureUpdateUserInfoModuleWithInfo: self.presenterStateStorage.userInfo
                                      withModuleOutput: self];
}


#pragma mark - Methods OSUserInfoInteractorOutput -




#pragma mark - Methods OSUserUpdateInfoModuleOutput -

- (void) didUpdateUserInfo
{
    self.presenterStateStorage.userInfo = [self.interactor obtainUpdatedUserInfoWithUserName: self.presenterStateStorage.userInfo.username];
    
    [self.view updateUserInfo: self.presenterStateStorage.userInfo];
}


@end
