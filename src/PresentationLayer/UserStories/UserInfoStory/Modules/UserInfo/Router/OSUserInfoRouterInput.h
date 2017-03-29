//
//  OSUserInfoRouterInput.h
//  ViperSampleProject
//
//  Created by Valeria Mozghova on 28/03/2017.
//  Copyright © 2017 OnSight. All rights reserved.
//

// Frameworks
@import Foundation;

// Classes
@class UserInfoPlainObject;
#import "OSUserUpdateInfoModuleOutput.h"

@protocol OSUserInfoRouterInput <NSObject>

- (void) configureUpdateUserInfoModuleWithInfo: (UserInfoPlainObject*)             info
                              withModuleOutput: (id<OSUserUpdateInfoModuleOutput>) moduleInput;

@end
