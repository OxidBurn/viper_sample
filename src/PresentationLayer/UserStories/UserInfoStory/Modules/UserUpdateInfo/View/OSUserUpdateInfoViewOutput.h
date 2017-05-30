//
//  OSUserUpdateInfoViewOutput.h
//  ViperSampleProject
//
//  Created by Nikolay Chaban on 29/03/2017.
//  Copyright © 2017 OnSight. All rights reserved.
//

// Frameworks
@import Foundation;

// Classes
@class UserInfoPlainObject;

// Protocols
@protocol OSUserUpdateInfoViewOutput <NSObject>

/**
 @author Nikolay Chaban
 
 Method which inform presenter, that view is ready for a work
 */
- (void) didTriggerViewReadyEvent;

/**
 @author Nikolay Chaban
 
 Method called when user finish entering new user info and want to update it in DB
 */
- (void) didUpdateUserInfo;

@end
