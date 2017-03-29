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
#import "UsersCellObjectBuilder.h"
#import "ServiceComponents.h"

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
                              [definition injectProperty: @selector(dataDisplayManager)
                                                    with: [self dataDisplayManager]];
                                                    
                          }];
}

- (OSAllUsersInteractor*) interactorAllUsers 
{
    return [TyphoonDefinition withClass: [OSAllUsersInteractor class]
                          configuration: ^(TyphoonDefinition* definition) {
                          
                              [definition injectProperty: @selector(output)
                                                    with: [self presenterAllUsers]];
                              
                              /**
                               @author Valeria Mozghova
                               
                               Inject service property, for storing/updating user info to database
                               */
                              [definition injectProperty: @selector(userInfoService)
                                                    with: [self.serviceComponents userInfoService]];
                              
                              /**
                               @author Valeria Mozghova
                               
                               Inject ponsomizer for converting MO to PONSO
                               */
                              [definition injectProperty: @selector(ponsomizer)
                                                    with: [self.ponsomizerAssembly ponsomizer]];
                                                    
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

#pragma mark - Internal module assembly initialization -

- (AllUsersDataDisplayManager*) dataDisplayManager
{
    return [TyphoonDefinition withClass: [AllUsersDataDisplayManager class]
                          configuration:^(TyphoonDefinition* definition) {
                              
                              [definition injectProperty:@selector(cellObjectBuilder)
                                                    with:[self cellObjectBuilder]];
                          }];
}


- (UsersCellObjectBuilder*) cellObjectBuilder
{
    return [TyphoonDefinition withClass: [UsersCellObjectBuilder class]];
}

@end
