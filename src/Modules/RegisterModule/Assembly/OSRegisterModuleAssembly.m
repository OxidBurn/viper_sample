//
//  OSRegisterModuleAssembly.m
//  ViperSampleProject
//
//  Created by Nikolay Chaban on 18/03/2017.
//  Copyright © 2017 OnSight. All rights reserved.
//

#import "OSRegisterModuleAssembly.h"

// Frameworks
#import <ViperMcFlurry/ViperMcFlurry.h>

// Classes
#import "OSRegisterModuleViewController.h"
#import "OSRegisterModuleInteractor.h"
#import "OSRegisterModulePresenter.h"
#import "OSRegisterModuleRouter.h"


@implementation OSRegisterModuleAssembly


#pragma mark - Initialization methods -

- (OSRegisterModuleViewController*) viewRegisterModule 
{
    return [TyphoonDefinition withClass: [OSRegisterModuleViewController class]
                          configuration: ^(TyphoonDefinition* definition) {
                          
                              [definition injectProperty: @selector(output)
                                                    with: [self presenterRegisterModule]];
                              [definition injectProperty: @selector(moduleInput)
                                                    with: [self presenterRegisterModule]];
                                                    
                          }];
}

- (OSRegisterModuleInteractor*) interactorRegisterModule 
{
    return [TyphoonDefinition withClass: [OSRegisterModuleInteractor class]
                          configuration: ^(TyphoonDefinition* definition) {
                          
                              [definition injectProperty: @selector(output)
                                                    with: [self presenterRegisterModule]];
                                                    
                          }];
}

- (OSRegisterModulePresenter*) presenterRegisterModule
{
    return [TyphoonDefinition withClass: [OSRegisterModulePresenter class]
                          configuration: ^(TyphoonDefinition* definition) {
                          
                              [definition injectProperty: @selector(view)
                                                    with: [self viewRegisterModule]];
                              [definition injectProperty: @selector(interactor)
                                                    with: [self interactorRegisterModule]];
                              [definition injectProperty: @selector(router)
                                                    with: [self routerRegisterModule]];
                                                    
                          }];
}

- (OSRegisterModuleRouter*) routerRegisterModule
{
    return [TyphoonDefinition withClass: [OSRegisterModuleRouter class]
                          configuration: ^(TyphoonDefinition* definition) {
                          
                              [definition injectProperty: @selector(transitionHandler)
                                                    with: [self viewRegisterModule]];
                                                    
                          }];
}

@end
