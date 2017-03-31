//
//  UsersCellObjectBuilder.m
//  ViperSampleProject
//
//  Created by Lera Mozgovaya on 3/29/17.
//  Copyright © 2017 Nikolay Chaban. All rights reserved.
//

#import "UsersCellObjectBuilder.h"

#import "UserInfoCellObject.h"
#import "UserInfoPlainObject.h"
#import "UserWithAvatarCellObject.h"

@implementation UsersCellObjectBuilder


#pragma mark -  Public -

- (NSArray*) buildCellObjectsWithUsers: (NSArray*) users
{
    NSMutableArray* objects = [NSMutableArray new];
    
    [users enumerateObjectsUsingBlock: ^(UserInfoPlainObject*  _Nonnull user, NSUInteger idx, BOOL * _Nonnull stop) {
        
        NSObject* userObject = nil;
        
        if (user.avatar > 0)
        {
            userObject = [UserWithAvatarCellObject objectWithUser: user];
        }
        else
        {
            userObject = [UserInfoCellObject objectWithUser: user];
        }
        
        [objects addObject: userObject];
        
        
    }];
    
    return objects.copy;
}


@end

