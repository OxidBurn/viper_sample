//
//  LoginModulePresenter.h
//  ViperSampleProject
//
//  Created by Nikolay Chaban on 22/12/2016.
//  Copyright © 2016 OnSight. All rights reserved.
//

#import "LoginModuleViewOutput.h"
#import "LoginModuleInteractorOutput.h"
#import "LoginModuleModuleInput.h"

@protocol LoginModuleViewInput;
@protocol LoginModuleInteractorInput;
@protocol LoginModuleRouterInput;

@interface LoginModulePresenter : NSObject <LoginModuleModuleInput, LoginModuleViewOutput, LoginModuleInteractorOutput>

@property (nonatomic, weak) id<LoginModuleViewInput> view;
@property (nonatomic, strong) id<LoginModuleInteractorInput> interactor;
@property (nonatomic, strong) id<LoginModuleRouterInput> router;

@end
