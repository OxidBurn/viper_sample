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
#import "ServiceComponents.h"
#import "PresentationLayerHelpersAssembly.h"


@implementation OSRegisterModuleAssembly


#pragma mark - Module factory -

- (id<RamblerViperModuleFactoryProtocol>) factoryRegisterModule
{
    return [TyphoonDefinition withClass: [RamblerViperModuleFactory class]
                          configuration: ^(TyphoonDefinition* definition) {
                              
                              [definition useInitializer: @selector(initWithStoryboard:andRestorationId:)
                                              parameters: ^(TyphoonMethod *initializer) {
                                  
                                                  [initializer injectParameterWith: [self storyboardRegisterModule]];
                                                  [initializer injectParameterWith: @"OSRegisterModuleViewController"];
                              }];
                              
                          }];
}

- (UIStoryboard*) storyboardRegisterModule
{
    return [TyphoonDefinition withClass: [TyphoonStoryboard class]
                          configuration: ^(TyphoonDefinition *definition) {
                              
                              [definition useInitializer: @selector(storyboardWithName:factory:bundle:)
                                              parameters: ^(TyphoonMethod *initializer) {
                                                  
                                                  [initializer injectParameterWith: @"Main"];
                                                  [initializer injectParameterWith: self];
                                                  [initializer injectParameterWith: nil];
                                                  
                                              }];
                              
                          }];
}


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
                              
                              /**
                               @author Nikolay Chaban
                               
                               Inject register service property from service components
                               */
                              [definition injectProperty: @selector(registerService)
                                                    with: [self.serviceComponents registerService]];
                              
                              /**
                               @author Nikolay Chaban
                               
                               Inject entered registration info validator property from presentation layer helper assembly
                               */
                              [definition injectProperty: @selector(registrationValidator)
                                                    with: [self.presentationLayerHelpersAssembly registrationValidator]];
                                                    
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
