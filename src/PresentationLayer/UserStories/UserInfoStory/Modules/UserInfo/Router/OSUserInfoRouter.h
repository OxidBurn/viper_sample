//
//  OSUserInfoRouter.h
//  ViperSampleProject
//
//  Created by Valeria Mozghova on 28/03/2017.
//  Copyright © 2017 OnSight. All rights reserved.
//

// Classes
#import "OSUserInfoRouterInput.h"

// Protocols
@protocol RamblerViperModuleTransitionHandlerProtocol;

@interface OSUserInfoRouter : NSObject <OSUserInfoRouterInput>

@property (nonatomic, weak) id<RamblerViperModuleTransitionHandlerProtocol> transitionHandler;

@end
