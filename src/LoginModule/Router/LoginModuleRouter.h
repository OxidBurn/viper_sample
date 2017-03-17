//
//  LoginModuleRouter.h
//  ViperSampleProject
//
//  Created by Nikolay Chaban on 22/12/2016.
//  Copyright © 2016 OnSight. All rights reserved.
//

#import "LoginModuleRouterInput.h"

@protocol RamblerViperModuleTransitionHandlerProtocol;

@interface LoginModuleRouter : NSObject <LoginModuleRouterInput>

@property (nonatomic, weak) id<RamblerViperModuleTransitionHandlerProtocol> transitionHandler;

@end
