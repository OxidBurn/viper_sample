//
//  OSRegisterModuleViewOutput.h
//  ViperSampleProject
//
//  Created by Nikolay Chaban on 18/03/2017.
//  Copyright © 2017 OnSight. All rights reserved.
//

// Frameworks
@import Foundation;

// Protocols
@protocol OSRegisterModuleViewOutput <NSObject>

/**
 @author Nikolay Chaban
 
 Method which inform presenter, that view is ready for a work
 */
- (void) didTriggerViewReadyEvent;

- (void) sendRegistrationRequest;

- (void) didTapAvatarImage;

@end
