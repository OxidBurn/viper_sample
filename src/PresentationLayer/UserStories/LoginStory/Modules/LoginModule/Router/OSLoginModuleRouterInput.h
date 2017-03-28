//
//  OSLoginModuleRouterInput.h
//  ViperSampleProject
//
//  Created by Nikolay Chaban on 18/03/2017.
//  Copyright © 2017 OnSight. All rights reserved.
//

// Frameworks
@import Foundation;

//Classes
#import "UserInfoPlainObject.h"

@protocol OSLoginModuleRouterInput <NSObject>

/**
 @author Chaban Nikolay
 
 Method for opening Register screen from Login screen with using Storyboard segue
 by pressing on "Register" button
 */
- (void) openRegisterModule;

/**
 @author Valeriya Mozghovaya
 
 Method for opening UserInfo screen from Login screen with using Storyboard segue
 by pressing on "Login" button
 */

- (void) openUserInfoModuleWithUserInfo: (UserInfoPlainObject*) user;

/**
 @author Chaban Nikolay
 
 Open Register module/screen from Login screen with using transition factory
 This case allow to you, pushed controller to navigation stack from source controller
 */
- (void) instantiateRegisterModule;

@end
