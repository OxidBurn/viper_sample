//
//  UserWithAvatarCellObject.h
//  ViperSampleProject
//
//  Created by Lera Mozgovaya on 3/31/17.
//  Copyright © 2017 Nikolay Chaban. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "UserInfoPlainObject.h"

@interface UserWithAvatarCellObject : NSObject

@property (nonatomic, strong, readonly) UserInfoPlainObject* user;

+ (instancetype) objectWithUser: (UserInfoPlainObject*) user;

@end
