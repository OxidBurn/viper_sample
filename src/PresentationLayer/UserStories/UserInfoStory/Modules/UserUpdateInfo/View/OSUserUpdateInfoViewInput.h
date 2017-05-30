//
//  OSUserUpdateInfoViewInput.h
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
@protocol OSUserUpdateInfoViewInput <NSObject>

/**
 @author Nikolay Chaban

 Method for setup initial state of view
 */
- (void) setupInitialState;

- (void) configureViewWithUserInfo: (UserInfoPlainObject*) info;


/**
 @author Nikolay Chaban
 
 Methods for getting updated user info

 @return strings value from entered text fields
 */
- (NSString*) obtainNewUserName;

- (NSString*) obtainNewFullName;

- (NSString*) obtainNewEmail;

@end
