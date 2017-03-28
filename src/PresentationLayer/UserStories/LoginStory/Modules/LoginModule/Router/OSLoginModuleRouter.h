//
//  OSLoginModuleRouter.h
//  ViperSampleProject
//
//  Created by Nikolay Chaban on 18/03/2017.
//  Copyright © 2017 OnSight. All rights reserved.
//

#import <ViperMcFlurry/ViperMcFlurry.h>

// Classes
#import "OSLoginModuleRouterInput.h"

// Protocols
@protocol RamblerViperModuleTransitionHandlerProtocol;

@interface OSLoginModuleRouter : NSObject <OSLoginModuleRouterInput>

@property (nonatomic, weak) id<RamblerViperModuleTransitionHandlerProtocol> transitionHandler;

@property (strong, nonatomic) id<RamblerViperModuleFactoryProtocol> registerModuleFactory;

@property (strong, nonatomic) id<RamblerViperModuleFactoryProtocol> userInfoModuleFactory;

@end
