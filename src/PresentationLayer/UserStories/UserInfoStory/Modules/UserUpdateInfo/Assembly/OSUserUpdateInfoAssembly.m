//
//  OSUserUpdateInfoAssembly.m
//  ViperSampleProject
//
//  Created by Nikolay Chaban on 29/03/2017.
//  Copyright © 2017 OnSight. All rights reserved.
//

#import "OSUserUpdateInfoAssembly.h"

// Frameworks
#import <ViperMcFlurry/ViperMcFlurry.h>

// Classes
#import "OSUserUpdateInfoViewController.h"
#import "OSUserUpdateInfoInteractor.h"
#import "OSUserUpdateInfoPresenter.h"
#import "OSUserUpdateInfoRouter.h"
#import "UserInfoServiceImplementation.h"
#import "ServiceComponents.h"


@implementation OSUserUpdateInfoAssembly


#pragma mark - Initialization methods -

- (OSUserUpdateInfoViewController*) viewUserUpdateInfo 
{
    return [TyphoonDefinition withClass: [OSUserUpdateInfoViewController class]
                          configuration: ^(TyphoonDefinition* definition) {
                          
                              [definition injectProperty: @selector(output)
                                                    with: [self presenterUserUpdateInfo]];
                              [definition injectProperty: @selector(moduleInput)
                                                    with: [self presenterUserUpdateInfo]];
                                                    
                          }];
}

- (OSUserUpdateInfoInteractor*) interactorUserUpdateInfo 
{
    return [TyphoonDefinition withClass: [OSUserUpdateInfoInteractor class]
                          configuration: ^(TyphoonDefinition* definition) {
                          
                              [definition injectProperty: @selector(output)
                                                    with: [self presenterUserUpdateInfo]];

                              /**
                               @author Nikolay Chaban
                               
                               Setup login service input protocol for processing login methods
                               */
                              [definition injectProperty: @selector(userInfoService)
                                                    with: [self.serviceComponents userInfoService]];
                                                    
                          }];
}

- (OSUserUpdateInfoPresenter*) presenterUserUpdateInfo
{
    return [TyphoonDefinition withClass: [OSUserUpdateInfoPresenter class]
                          configuration: ^(TyphoonDefinition* definition) {
                          
                              [definition injectProperty: @selector(view)
                                                    with: [self viewUserUpdateInfo]];
                              [definition injectProperty: @selector(interactor)
                                                    with: [self interactorUserUpdateInfo]];
                              [definition injectProperty: @selector(router)
                                                    with: [self routerUserUpdateInfo]];
                                                    
                          }];
}

- (OSUserUpdateInfoRouter*) routerUserUpdateInfo
{
    return [TyphoonDefinition withClass: [OSUserUpdateInfoRouter class]
                          configuration: ^(TyphoonDefinition* definition) {
                          
                              [definition injectProperty: @selector(transitionHandler)
                                                    with: [self viewUserUpdateInfo]];
                                                    
                          }];
}

@end
