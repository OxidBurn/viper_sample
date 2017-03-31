//
//  OSAllUsersRouterInput.h
//  ViperSampleProject
//
//  Created by Valeria Mozghova on 29/03/2017.
//  Copyright © 2017 OnSight. All rights reserved.
//

// Frameworks
@import Foundation;

//Classes
@class UserInfoPlainObject;

@protocol OSAllUsersRouterInput <NSObject>

- (void) openUserInfoModuleWithUser: (UserInfoPlainObject*) user;

@end
