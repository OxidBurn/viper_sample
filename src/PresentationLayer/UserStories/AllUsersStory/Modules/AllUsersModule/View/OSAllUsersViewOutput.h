//
//  OSAllUsersViewOutput.h
//  ViperSampleProject
//
//  Created by Valeria Mozghova on 29/03/2017.
//  Copyright © 2017 OnSight. All rights reserved.
//

// Frameworks
@import Foundation;

// Classes
@class UserInfoPlainObject;

// Protocols
@protocol OSAllUsersViewOutput <NSObject>

/**
 @author Valeria Mozghova
 
 Method which inform presenter, that view is ready for a work
 */
- (void) didTriggerViewReadyEvent;

- (void) setupView;

- (void) didSelectUser: (UserInfoPlainObject*) user;

@end
