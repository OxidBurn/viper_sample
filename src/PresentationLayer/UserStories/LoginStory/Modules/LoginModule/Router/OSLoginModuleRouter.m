//
//  OSLoginModuleRouter.m
//  ViperSampleProject
//
//  Created by Nikolay Chaban on 18/03/2017.
//  Copyright © 2017 OnSight. All rights reserved.
//

#import "OSLoginModuleRouter.h"

// Frameworks
#import <ViperMcFlurry/ViperMcFlurry.h>

// Classes
#import "LoginModuleSegueIdentifiersConstants.h"

@implementation OSLoginModuleRouter


#pragma mark - Methods OSLoginModuleRouterInput -

- (void) openRegisterModule
{
    [[self.transitionHandler openModuleUsingSegue: LoginToRegisterSegue] thenChainUsingBlock: ^id<RamblerViperModuleOutput>(id<RamblerViperModuleInput> moduleInput) {
        
        /**
         @author Nikolay Chaban
         
         This block we can use in case if need to pass some info to destination controller
         */
        
        return nil;
        
    }];
}

- (void) instantiateRegisterModule
{
    [self.transitionHandler openModuleUsingFactory: self.registerModuleFactory
                               withTransitionBlock: ^(id<RamblerViperModuleTransitionHandlerProtocol> sourceModuleTransitionHandler, id<RamblerViperModuleTransitionHandlerProtocol> destinationModuleTransitionHandler) {
                                   
                                   UIViewController* sourceController      = (id)sourceModuleTransitionHandler;
                                   UIViewController* destinationController = (id)destinationModuleTransitionHandler;
                                   
                                   [sourceController.navigationController pushViewController: destinationController
                                                                                    animated: YES];
                                   
                               }];
}

@end
