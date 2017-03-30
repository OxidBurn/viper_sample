//
//  OSAvatarsGalleryInteractor.h
//  ViperSampleProject
//
//  Created by Valeria Mozghova on 30/03/2017.
//  Copyright © 2017 OnSight. All rights reserved.
//

// Classes
#import "OSAvatarsGalleryInteractorInput.h"

// Protocols
@protocol OSAvatarsGalleryInteractorOutput;

@interface OSAvatarsGalleryInteractor : NSObject <OSAvatarsGalleryInteractorInput>

@property (nonatomic, weak) id<OSAvatarsGalleryInteractorOutput> output;

@end
