//
//  SyncModulePresenter.h
//  ViperSampleProject
//
//  Created by Nikolay Chaban on 22/12/2016.
//  Copyright © 2016 OnSight. All rights reserved.
//

#import "SyncModuleViewOutput.h"
#import "SyncModuleInteractorOutput.h"
#import "SyncModuleModuleInput.h"

@protocol SyncModuleViewInput;
@protocol SyncModuleInteractorInput;
@protocol SyncModuleRouterInput;

@interface SyncModulePresenter : NSObject <SyncModuleModuleInput, SyncModuleViewOutput, SyncModuleInteractorOutput>

@property (nonatomic, weak) id<SyncModuleViewInput> view;
@property (nonatomic, strong) id<SyncModuleInteractorInput> interactor;
@property (nonatomic, strong) id<SyncModuleRouterInput> router;

@end
