//
//  OSAvatarsGalleryPresenter.h
//  ViperSampleProject
//
//  Created by Valeria Mozghova on 30/03/2017.
//  Copyright © 2017 OnSight. All rights reserved.
//

// Classes
#import "OSAvatarsGalleryViewOutput.h"
#import "OSAvatarsGalleryInteractorOutput.h"
#import "OSAvatarsGalleryModuleInput.h"
#import "OSAvatarsGalleryModuleOutput.h"

// Protocols
@protocol OSAvatarsGalleryViewInput;
@protocol OSAvatarsGalleryInteractorInput;
@protocol OSAvatarsGalleryRouterInput;
@protocol OSAvatarsGalleryModuleOutput;

@interface OSAvatarsGalleryPresenter : NSObject <OSAvatarsGalleryModuleInput, OSAvatarsGalleryViewOutput, OSAvatarsGalleryInteractorOutput>

@property (nonatomic, weak)   id<OSAvatarsGalleryViewInput> view;
@property (nonatomic, strong) id<OSAvatarsGalleryInteractorInput> interactor;
@property (nonatomic, strong) id<OSAvatarsGalleryRouterInput> router;
@property (nonatomic, strong) id<OSAvatarsGalleryModuleOutput> moduleOutput;

@end
