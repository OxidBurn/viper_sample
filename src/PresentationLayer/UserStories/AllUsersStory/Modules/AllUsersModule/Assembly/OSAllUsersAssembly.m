//
//  OSAllUsersAssembly.m
//  ViperSampleProject
//
//  Created by Valeria Mozghova on 29/03/2017.
//  Copyright © 2017 OnSight. All rights reserved.
//

#import "OSAllUsersAssembly.h"

// Frameworks
#import <ViperMcFlurry/ViperMcFlurry.h>

// Classes
#import "OSAllUsersViewController.h"
#import "OSAllUsersInteractor.h"
#import "OSAllUsersPresenter.h"
#import "OSAllUsersRouter.h"


@implementation OSAllUsersAssembly


#pragma mark - Initialization methods -

- (OSAllUsersViewController*) viewAllUsers 
{
    return [TyphoonDefinition withClass: [OSAllUsersViewController class]
                          configuration: ^(TyphoonDefinition* definition) {
                          
                              [definition injectProperty: @selector(output)
                                                    with: [self presenterAllUsers]];
                              [definition injectProperty: @selector(moduleInput)
                                                    with: [self presenterAllUsers]];
                                                    
                          }];
}

- (OSAllUsersInteractor*) interactorAllUsers 
{
    return [TyphoonDefinition withClass: [OSAllUsersInteractor class]
                          configuration: ^(TyphoonDefinition* definition) {
                          
                              [definition injectProperty: @selector(output)
                                                    with: [self presenterAllUsers]];
                                                    
                          }];
}

- (OSAllUsersPresenter*) presenterAllUsers
{
    return [TyphoonDefinition withClass: [OSAllUsersPresenter class]
                          configuration: ^(TyphoonDefinition* definition) {
                          
                              [definition injectProperty: @selector(view)
                                                    with: [self viewAllUsers]];
                              [definition injectProperty: @selector(interactor)
                                                    with: [self interactorAllUsers]];
                              [definition injectProperty: @selector(router)
                                                    with: [self routerAllUsers]];
                                                    
                          }];
}

- (OSAllUsersRouter*) routerAllUsers
{
    return [TyphoonDefinition withClass: [OSAllUsersRouter class]
                          configuration: ^(TyphoonDefinition* definition) {
                          
                              [definition injectProperty: @selector(transitionHandler)
                                                    with: [self viewAllUsers]];
                                                    
                          }];
}

@end
