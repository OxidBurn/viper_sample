//
//  OSUserInfoViewOutput.h
//  ViperSampleProject
//
//  Created by Valeria Mozghova on 28/03/2017.
//  Copyright © 2017 OnSight. All rights reserved.
//

// Frameworks
@import Foundation;

// Protocols
@protocol OSUserInfoViewOutput <NSObject>

/**
 @author Valeria Mozghova
 
 Method which inform presenter, that view is ready for a work
 */
- (void) didTriggerViewReadyEvent;

@end
