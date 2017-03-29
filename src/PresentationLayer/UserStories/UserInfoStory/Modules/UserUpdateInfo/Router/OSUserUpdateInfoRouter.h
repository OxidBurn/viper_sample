//
//  OSUserUpdateInfoRouter.h
//  ViperSampleProject
//
//  Created by Nikolay Chaban on 29/03/2017.
//  Copyright © 2017 OnSight. All rights reserved.
//

// Classes
#import "OSUserUpdateInfoRouterInput.h"

// Protocols
@protocol RamblerViperModuleTransitionHandlerProtocol;

@interface OSUserUpdateInfoRouter : NSObject <OSUserUpdateInfoRouterInput>

@property (nonatomic, weak) id<RamblerViperModuleTransitionHandlerProtocol> transitionHandler;

@end
