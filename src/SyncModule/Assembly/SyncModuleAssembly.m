//
//  SyncModuleAssembly.m
//  ViperSampleProject
//
//  Created by Nikolay Chaban on 22/12/2016.
//  Copyright © 2016 OnSight. All rights reserved.
//

#import "SyncModuleAssembly.h"

#import "SyncModuleViewController.h"
#import "SyncModuleInteractor.h"
#import "SyncModulePresenter.h"
#import "SyncModuleRouter.h"

#import <ViperMcFlurry/ViperMcFlurry.h>

@implementation SyncModuleAssembly

- (SyncModuleViewController *)viewSyncModule {
    return [TyphoonDefinition withClass:[SyncModuleViewController class]
                          configuration:^(TyphoonDefinition *definition) {
                              [definition injectProperty:@selector(output)
                                                    with:[self presenterSyncModule]];
                              [definition injectProperty:@selector(moduleInput)
                                                    with:[self presenterSyncModule]];
                          }];
}

- (SyncModuleInteractor *)interactorSyncModule {
    return [TyphoonDefinition withClass:[SyncModuleInteractor class]
                          configuration:^(TyphoonDefinition *definition) {
                              [definition injectProperty:@selector(output)
                                                    with:[self presenterSyncModule]];
                          }];
}

- (SyncModulePresenter *)presenterSyncModule{
    return [TyphoonDefinition withClass:[SyncModulePresenter class]
                          configuration:^(TyphoonDefinition *definition) {
                              [definition injectProperty:@selector(view)
                                                    with:[self viewSyncModule]];
                              [definition injectProperty:@selector(interactor)
                                                    with:[self interactorSyncModule]];
                              [definition injectProperty:@selector(router)
                                                    with:[self routerSyncModule]];
                          }];
}

- (SyncModuleRouter *)routerSyncModule{
    return [TyphoonDefinition withClass:[SyncModuleRouter class]
                          configuration:^(TyphoonDefinition *definition) {
                              [definition injectProperty:@selector(transitionHandler)
                                                    with:[self viewSyncModule]];
                          }];
}

@end
