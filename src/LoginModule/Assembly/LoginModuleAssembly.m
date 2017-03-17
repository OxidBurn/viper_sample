//
//  LoginModuleAssembly.m
//  ViperSampleProject
//
//  Created by Nikolay Chaban on 22/12/2016.
//  Copyright © 2016 OnSight. All rights reserved.
//

#import "LoginModuleAssembly.h"

#import "LoginModuleViewController.h"
#import "LoginModuleInteractor.h"
#import "LoginModulePresenter.h"
#import "LoginModuleRouter.h"

#import <ViperMcFlurry/ViperMcFlurry.h>

@implementation LoginModuleAssembly

- (LoginModuleViewController *)viewLoginModule {
    return [TyphoonDefinition withClass:[LoginModuleViewController class]
                          configuration:^(TyphoonDefinition *definition) {
                              [definition injectProperty:@selector(output)
                                                    with:[self presenterLoginModule]];
                              [definition injectProperty:@selector(moduleInput)
                                                    with:[self presenterLoginModule]];
                          }];
}

- (LoginModuleInteractor *)interactorLoginModule {
    return [TyphoonDefinition withClass:[LoginModuleInteractor class]
                          configuration:^(TyphoonDefinition *definition) {
                              [definition injectProperty:@selector(output)
                                                    with:[self presenterLoginModule]];
                          }];
}

- (LoginModulePresenter *)presenterLoginModule{
    return [TyphoonDefinition withClass:[LoginModulePresenter class]
                          configuration:^(TyphoonDefinition *definition) {
                              [definition injectProperty:@selector(view)
                                                    with:[self viewLoginModule]];
                              [definition injectProperty:@selector(interactor)
                                                    with:[self interactorLoginModule]];
                              [definition injectProperty:@selector(router)
                                                    with:[self routerLoginModule]];
                          }];
}

- (LoginModuleRouter *)routerLoginModule{
    return [TyphoonDefinition withClass:[LoginModuleRouter class]
                          configuration:^(TyphoonDefinition *definition) {
                              [definition injectProperty:@selector(transitionHandler)
                                                    with:[self viewLoginModule]];
                          }];
}

@end
