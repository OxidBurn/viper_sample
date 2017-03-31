//
//  OSAvatarsGalleryRouter.h
//  ViperSampleProject
//
//  Created by Valeria Mozghova on 30/03/2017.
//  Copyright © 2017 OnSight. All rights reserved.
//

// Classes
#import "OSAvatarsGalleryRouterInput.h"

// Protocols
@protocol RamblerViperModuleTransitionHandlerProtocol;

@interface OSAvatarsGalleryRouter : NSObject <OSAvatarsGalleryRouterInput>

@property (nonatomic, weak) id<RamblerViperModuleTransitionHandlerProtocol> transitionHandler;

@end
