//
//  LoginModulePresenter.m
//  ViperSampleProject
//
//  Created by Nikolay Chaban on 22/12/2016.
//  Copyright © 2016 OnSight. All rights reserved.
//

#import "LoginModulePresenter.h"

#import "LoginModuleViewInput.h"
#import "LoginModuleInteractorInput.h"
#import "LoginModuleRouterInput.h"

@implementation LoginModulePresenter

#pragma mark - Методы LoginModuleModuleInput

- (void)configureModule {
    // Стартовая конфигурация модуля, не привязанная к состоянию view
}

#pragma mark - Методы LoginModuleViewOutput

- (void)didTriggerViewReadyEvent {
	[self.view setupInitialState];
}

#pragma mark - Методы LoginModuleInteractorOutput

@end
