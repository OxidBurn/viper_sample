//
//  OSUserInfoAssembly.m
//  ViperSampleProject
//
//  Created by Valeria Mozghova on 28/03/2017.
//  Copyright © 2017 OnSight. All rights reserved.
//

#import "OSUserInfoAssembly.h"

// Frameworks
#import <ViperMcFlurry/ViperMcFlurry.h>

// Classes
#import "OSUserInfoViewController.h"
#import "OSUserInfoInteractor.h"
#import "OSUserInfoPresenter.h"
#import "OSUserInfoRouter.h"
#import "PonsomizerAssembly.h"


@implementation OSUserInfoAssembly


#pragma mark - Initialization methods -

- (OSUserInfoViewController*) viewUserInfo 
{
    return [TyphoonDefinition withClass: [OSUserInfoViewController class]
                          configuration: ^(TyphoonDefinition* definition) {
                          
                              [definition injectProperty: @selector(output)
                                                    with: [self presenterUserInfo]];
                              [definition injectProperty: @selector(moduleInput)
                                                    with: [self presenterUserInfo]];
                                                    
                          }];
}

- (OSUserInfoInteractor*) interactorUserInfo 
{
    return [TyphoonDefinition withClass: [OSUserInfoInteractor class]
                          configuration: ^(TyphoonDefinition* definition) {
                          
                              [definition injectProperty: @selector(output)
                                                    with: [self presenterUserInfo]];
                              /**
                               @author Valeriya Mozghovaya
                               
                               Injecting ponsomizer for converting MO to PONSO
                               */
                              [definition injectProperty: @selector(ponsomizer)
                                                    with: [self.ponsomizerAssembly ponsomizer]];
                                                    
                          }];
}

- (OSUserInfoPresenter*) presenterUserInfo
{
    return [TyphoonDefinition withClass: [OSUserInfoPresenter class]
                          configuration: ^(TyphoonDefinition* definition) {
                          
                              [definition injectProperty: @selector(view)
                                                    with: [self viewUserInfo]];
                              [definition injectProperty: @selector(interactor)
                                                    with: [self interactorUserInfo]];
                              [definition injectProperty: @selector(router)
                                                    with: [self routerUserInfo]];
                                                    
                          }];
}

- (OSUserInfoRouter*) routerUserInfo
{
    return [TyphoonDefinition withClass: [OSUserInfoRouter class]
                          configuration: ^(TyphoonDefinition* definition) {
                          
                              [definition injectProperty: @selector(transitionHandler)
                                                    with: [self viewUserInfo]];
                                                    
                          }];
}

@end
