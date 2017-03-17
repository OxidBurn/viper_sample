//
//  SyncModulePresenter.m
//  ViperSampleProject
//
//  Created by Nikolay Chaban on 22/12/2016.
//  Copyright © 2016 OnSight. All rights reserved.
//

#import "SyncModulePresenter.h"

#import "SyncModuleViewInput.h"
#import "SyncModuleInteractorInput.h"
#import "SyncModuleRouterInput.h"

@implementation SyncModulePresenter

#pragma mark - Методы SyncModuleModuleInput

- (void)configureModule {
    // Стартовая конфигурация модуля, не привязанная к состоянию view
}

#pragma mark - Методы SyncModuleViewOutput

- (void)didTriggerViewReadyEvent {
	[self.view setupInitialState];
}

#pragma mark - Методы SyncModuleInteractorOutput

@end
