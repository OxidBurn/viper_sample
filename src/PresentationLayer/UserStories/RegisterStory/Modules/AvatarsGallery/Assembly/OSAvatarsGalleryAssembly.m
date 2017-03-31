//
//  OSAvatarsGalleryAssembly.m
//  ViperSampleProject
//
//  Created by Valeria Mozghova on 30/03/2017.
//  Copyright © 2017 OnSight. All rights reserved.
//

#import "OSAvatarsGalleryAssembly.h"

// Frameworks
#import <ViperMcFlurry/ViperMcFlurry.h>

// Classes
#import "OSAvatarsGalleryViewController.h"
#import "OSAvatarsGalleryInteractor.h"
#import "OSAvatarsGalleryPresenter.h"
#import "OSAvatarsGalleryRouter.h"
#import "AvatarsDataDisplayManager.h"
#import "AvatarsCellObjectBuilder.h"


@implementation OSAvatarsGalleryAssembly


#pragma mark - Initialization methods -

- (OSAvatarsGalleryViewController*) viewAvatarsGallery 
{
    return [TyphoonDefinition withClass: [OSAvatarsGalleryViewController class]
                          configuration: ^(TyphoonDefinition* definition) {
                          
                              [definition injectProperty: @selector(output)
                                                    with: [self presenterAvatarsGallery]];
                              [definition injectProperty: @selector(moduleInput)
                                                    with: [self presenterAvatarsGallery]];
                              [definition injectProperty: @selector(displayDataManager)
                                                    with: [self avatarDataDisplayManager]];
                                                    
                          }];
}

- (OSAvatarsGalleryInteractor*) interactorAvatarsGallery 
{
    return [TyphoonDefinition withClass: [OSAvatarsGalleryInteractor class]
                          configuration: ^(TyphoonDefinition* definition) {
                          
                              [definition injectProperty: @selector(output)
                                                    with: [self presenterAvatarsGallery]];
                                                    
                          }];
}

- (OSAvatarsGalleryPresenter*) presenterAvatarsGallery
{
    return [TyphoonDefinition withClass: [OSAvatarsGalleryPresenter class]
                          configuration: ^(TyphoonDefinition* definition) {
                          
                              [definition injectProperty: @selector(view)
                                                    with: [self viewAvatarsGallery]];
                              [definition injectProperty: @selector(interactor)
                                                    with: [self interactorAvatarsGallery]];
                              [definition injectProperty: @selector(router)
                                                    with: [self routerAvatarsGallery]];
                                                    
                          }];
}

- (OSAvatarsGalleryRouter*) routerAvatarsGallery
{
    return [TyphoonDefinition withClass: [OSAvatarsGalleryRouter class]
                          configuration: ^(TyphoonDefinition* definition) {
                          
                              [definition injectProperty: @selector(transitionHandler)
                                                    with: [self viewAvatarsGallery]];
                                                    
                          }];
}



#pragma mark - Internal -

- (AvatarsDataDisplayManager*) avatarDataDisplayManager
{
    return [TyphoonDefinition withClass: [AvatarsDataDisplayManager class]
                          configuration: ^(TyphoonDefinition* definition) {
                
                              [definition injectProperty: @selector(cellObjectBuilder)
                                                    with: [self avatarCellObjBuilder]];
            }];
}

- (AvatarsCellObjectBuilder*) avatarCellObjBuilder
{
    return [TyphoonDefinition withClass: [AvatarsCellObjectBuilder class]];
}


@end
