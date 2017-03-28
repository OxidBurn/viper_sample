//
//  OSLoginModulePresenter.m
//  ViperSampleProject
//
//  Created by Nikolay Chaban on 18/03/2017.
//  Copyright © 2017 OnSight. All rights reserved.
//

#import "OSLoginModulePresenter.h"

// Classes
#import "OSLoginModuleViewInput.h"
#import "OSLoginModuleInteractorInput.h"
#import "OSLoginModuleRouterInput.h"

@implementation OSLoginModulePresenter


#pragma mark - Methods OSLoginModuleModuleInput -

- (void) configureModule 
{
	// Starting configuration of the module, which dependent to the view state
}


#pragma mark - Methods OSLoginModuleViewOutput -

- (void) didTriggerViewReadyEvent 
{
	[self.view setupInitialState];
}

- (void) sendLoginRequest
{
    __weak typeof(self) blockSelf = self;
    
    [self.view getDataWithResultBlock: ^(NSString *login, NSString *password) {
        
        typeof(self) self = blockSelf;
        
        /**
         @author Nikolay Chaban
         
         Call method for opening User info screen
         */
        [self.interactor loginUserToServerWithName: login
                                       withPassword: password];
    }];
}


#pragma mark - Methods OSLoginModuleInteractorOutput -

- (void) setupView
{
    
}

- (void) instantiateRegisterButtonClicked
{
    [self.router openRegisterModule];
}

- (void) didLoggingUserToServerWithError: (NSError*) error
{
    [self.view showErrorWithLogin: error];
}

- (void) didLoggingUserToServerWithSuccess
{
   // [self.view showLoginSuccessMessage];
}

- (void) didLoggingUser: (UserInfoPlainObject*) user
{
    [self.router openUserInfoModuleWithUserInfo: user];
}

@end
