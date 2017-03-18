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
                                                    
                          }];
}

@end
