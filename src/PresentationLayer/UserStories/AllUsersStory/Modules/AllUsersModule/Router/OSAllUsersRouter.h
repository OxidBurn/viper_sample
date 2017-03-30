//
//  OSAllUsersRouter.h
//  ViperSampleProject
//
//  Created by Valeria Mozghova on 29/03/2017.
//  Copyright © 2017 OnSight. All rights reserved.
//

// Classes
#import "OSAllUsersRouterInput.h"

// Protocols
@protocol RamblerViperModuleTransitionHandlerProtocol;

@interface OSAllUsersRouter : NSObject <OSAllUsersRouterInput>

@property (nonatomic, weak) id<RamblerViperModuleTransitionHandlerProtocol> transitionHandler;

@end
