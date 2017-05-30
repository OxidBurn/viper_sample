//
//  OSAvatarsGalleryViewInput.h
//  ViperSampleProject
//
//  Created by Valeria Mozghova on 30/03/2017.
//  Copyright © 2017 OnSight. All rights reserved.
//

// Frameworks
@import Foundation;

// Protocols
@protocol OSAvatarsGalleryViewInput <NSObject>

/**
 @author Valeria Mozghova

 Method for setup initial state of view
 */
- (void) setupInitialStateWithAvatars: (NSArray*) avatarsArray;

@end
