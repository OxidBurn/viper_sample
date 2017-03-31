//
//  OSUserInfoInteractorInput.h
//  ViperSampleProject
//
//  Created by Valeria Mozghova on 28/03/2017.
//  Copyright © 2017 OnSight. All rights reserved.
//

// Frameworks
@import Foundation;

// Classes
@class UserInfoPlainObject;

@protocol OSUserInfoInteractorInput <NSObject>

- (UserInfoPlainObject*) obtainUpdatedUserInfoWithUserName: (NSString*) username;

- (void) obtainAvatarForUser: (UserInfoPlainObject*) user;

@end
