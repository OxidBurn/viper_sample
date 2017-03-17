//
//  SyncModuleRouter.h
//  ViperSampleProject
//
//  Created by Nikolay Chaban on 22/12/2016.
//  Copyright © 2016 OnSight. All rights reserved.
//

#import "SyncModuleRouterInput.h"

@protocol RamblerViperModuleTransitionHandlerProtocol;

@interface SyncModuleRouter : NSObject <SyncModuleRouterInput>

@property (nonatomic, weak) id<RamblerViperModuleTransitionHandlerProtocol> transitionHandler;

@end
