//
//  OSAvatarsGalleryAssembly_Testable.h
//  ViperSampleProject
//
//  Created by Valeria Mozghova on 30/03/2017.
//  Copyright © 2017 OnSight. All rights reserved.
//

#import "OSAvatarsGalleryAssembly.h"

// Classes
@class OSAvatarsGalleryViewController;
@class OSAvatarsGalleryInteractor;
@class OSAvatarsGalleryPresenter;
@class OSAvatarsGalleryRouter;

/**
 @author Valeria Mozghova

 Extension, which made private fabric methods is opened for testing. 
 */
@interface OSAvatarsGalleryAssembly ()

- (OSAvatarsGalleryViewController*) viewAvatarsGallery;
- (OSAvatarsGalleryPresenter*) presenterAvatarsGallery;
- (OSAvatarsGalleryInteractor*) interactorAvatarsGallery;
- (OSAvatarsGalleryRouter*) routerAvatarsGallery;

@end
