//
//  OSLoginModuleRouter.h
//  ViperSampleProject
//
//  Created by Nikolay Chaban on 18/03/2017.
//  Copyright © 2017 OnSight. All rights reserved.
//

// Classes
#import "OSLoginModuleRouterInput.h"

// Protocols
@protocol RamblerViperModuleTransitionHandlerProtocol;

@interface OSLoginModuleRouter : NSObject <OSLoginModuleRouterInput>

@property (nonatomic, weak) id<RamblerViperModuleTransitionHandlerProtocol> transitionHandler;

@end
