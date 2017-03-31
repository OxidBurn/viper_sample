//
//  OSAvatarsGalleryViewOutput.h
//  ViperSampleProject
//
//  Created by Valeria Mozghova on 30/03/2017.
//  Copyright © 2017 OnSight. All rights reserved.
//

// Frameworks
@import Foundation;

// Protocols
@protocol OSAvatarsGalleryViewOutput <NSObject>

/**
 @author Valeria Mozghova
 
 Method which inform presenter, that view is ready for a work
 */
- (void) didTriggerViewReadyEvent;

/**
 @author Valeria Mozghova
 
 Method which setup initial view of controller
 */
- (void) setupView;

/**
 @author Valeria Mozghova
 
 Method which inform presenter, that avatar was selected
 */
- (void) didSelectAvatar: (NSString*) avatar;

@end
