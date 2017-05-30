//
//  OSUserUpdateInfoInteractorInput.h
//  ViperSampleProject
//
//  Created by Nikolay Chaban on 29/03/2017.
//  Copyright © 2017 OnSight. All rights reserved.
//

// Frameworks
@import Foundation;

// Classes
#import "UserInfoPlainObject.h"

@protocol OSUserUpdateInfoInteractorInput <NSObject>

- (void) updateUserInfoInDB: (UserInfoPlainObject*) userInfo;

@end
