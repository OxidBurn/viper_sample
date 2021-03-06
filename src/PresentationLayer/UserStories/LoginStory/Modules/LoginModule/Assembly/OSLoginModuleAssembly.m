//
//  OSLoginModuleAssembly.m
//  ViperSampleProject
//
//  Created by Nikolay Chaban on 18/03/2017.
//  Copyright © 2017 OnSight. All rights reserved.
//

#import "OSLoginModuleAssembly.h"

// Frameworks
#import <ViperMcFlurry/ViperMcFlurry.h>

// Classes
#import "OSLoginModuleViewController.h"
#import "OSLoginModuleInteractor.h"
#import "OSLoginModulePresenter.h"
#import "OSLoginModuleRouter.h"
#import "ServiceComponents.h"

#import "OSRegisterModuleAssembly.h"
#import "PonsomizerAssembly.h"

@interface OSLoginModuleAssembly()

@property (strong, nonatomic, readonly) OSRegisterModuleAssembly* registerModuleAssembly;

@end


@implementation OSLoginModuleAssembly


#pragma mark - Initialization methods -

- (OSLoginModuleViewController*) viewLoginModule 
{
    return [TyphoonDefinition withClass: [OSLoginModuleViewController class]
                          configuration: ^(TyphoonDefinition* definition) {
                          
                              [definition injectProperty: @selector(output)
                                                    with: [self presenterLoginModule]];
                              [definition injectProperty: @selector(moduleInput)
                                                    with: [self presenterLoginModule]];
                                                    
                          }];
}

- (OSLoginModuleInteractor*) interactorLoginModule 
{
    return [TyphoonDefinition withClass: [OSLoginModuleInteractor class]
                          configuration: ^(TyphoonDefinition* definition) {
                          
                              [definition injectProperty: @selector(output)
                                                    with: [self presenterLoginModule]];
                              /**
                               @author Nikolay Chaban
                               
                               Setup login service input protocol for processing login methods
                               */
                              [definition injectProperty: @selector(loginService)
                                                    with: [self.serviceComponents loginService]];
                              
                              /**
                               @author Nikolay Chaban
                               
                               Inject service property, for storing/updating user info to database 
                               */
                              [definition injectProperty: @selector(userInfoService)
                                                    with: [self.serviceComponents userInfoService]];
                              
                              /**
                               @author Valeriya Mozghovaya
                               
                               Inject ponsomizer for converting MO to PONSO
                               */
                              [definition injectProperty: @selector(ponsomizer)
                                                    with: [self.ponsomizerAssembly ponsomizer]];
                                                    
                          }];
}

- (OSLoginModulePresenter*) presenterLoginModule
{
    return [TyphoonDefinition withClass: [OSLoginModulePresenter class]
                          configuration: ^(TyphoonDefinition* definition) {
                          
                              [definition injectProperty: @selector(view)
                                                    with: [self viewLoginModule]];
                              [definition injectProperty: @selector(interactor)
                                                    with: [self interactorLoginModule]];
                              [definition injectProperty: @selector(router)
                                                    with: [self routerLoginModule]];
                                                    
                          }];
}

- (OSLoginModuleRouter*) routerLoginModule
{
    return [TyphoonDefinition withClass: [OSLoginModuleRouter class]
                          configuration: ^(TyphoonDefinition* definition) {
                          
                              [definition injectProperty: @selector(transitionHandler)
                                                    with: [self viewLoginModule]];
                              /**
                               @author Nikolay Chaban
                               
                               Set register module factory property for transition to the Register module 
                               */
                              [definition injectProperty: @selector(registerModuleFactory)
                                                    with: [self.registerModuleAssembly factoryRegisterModule]];
                              
                              
                                                    
                          }];
}

@end
