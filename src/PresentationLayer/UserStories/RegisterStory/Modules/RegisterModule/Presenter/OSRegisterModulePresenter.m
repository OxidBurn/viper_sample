//
//  OSRegisterModulePresenter.m
//  ViperSampleProject
//
//  Created by Nikolay Chaban on 18/03/2017.
//  Copyright © 2017 OnSight. All rights reserved.
//

#import "OSRegisterModulePresenter.h"

// Classes
#import "OSRegisterModuleViewInput.h"
#import "OSRegisterModuleInteractorInput.h"
#import "OSRegisterModuleRouterInput.h"
#import "RegistrationParametersModel.h"

@implementation OSRegisterModulePresenter 


#pragma mark - Methods OSRegisterModuleModuleInput -

- (void) configureModule 
{
	// Starting configuration of the module, which dependent to the view state
}


#pragma mark - Methods OSRegisterModuleViewOutput -

- (void) didTriggerViewReadyEvent 
{
	[self.view setupInitialState];
}

- (void) sendRegistrationRequest
{
    [self.interactor sendRegistrationRequestWithParameters: [self obtainUserInfoFromView]];
}

- (void) didTapAvatarImage
{
    [self.router openSelectAvatarModuleWithModuleOutput: self];
}

#pragma mark - Methods OSRegisterModuleInteractorOutput -

- (void) didRegisterWithSuccess
{
    //[self.interactor ]
    [self.view didFinishRegistrationWithSuccessOrError: nil];
}

- (void) didSendRequestWithError: (NSError*) error
{
    [self.view didFinishRegistrationWithSuccessOrError: error];
}


#pragma mark - Methods OSAvatarGalleryModuleOutput -

- (void) didSelectCellWithAvatar: (NSString*) avatarName
{
    [self.view updateAvatarPath: avatarName];
}


#pragma mark - Internal methods -

- (RegistrationParametersModel*) obtainUserInfoFromView
{
    RegistrationParametersModel* registerModel = [RegistrationParametersModel new];
    
    registerModel.userName        = [self.view obtainUserName];
    registerModel.password        = [self.view obtainUserPassword];
    registerModel.confirmPassword = [self.view obtainUserConfirmPassword];
    registerModel.fullName        = [self.view obtainFullName];
    registerModel.email           = [self.view obtainEmail];
    registerModel.avatar          = [self.view obtainAvatar];
    
    return registerModel;
}


@end
