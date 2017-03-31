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

/**
 @author Valeria Mozghova
 
 Method that collects cell objects
 
 @param users - array of users which information will be displayed
 @return array of cell objects (view models of cell)
 */
- (NSArray*) buildCellObjectsWithUsers: (NSArray*) users
{
    NSMutableArray* objects = [NSMutableArray new];
    
    [users enumerateObjectsUsingBlock: ^(UserInfoPlainObject*  _Nonnull user, NSUInteger idx, BOOL * _Nonnull stop) {
        
        UserInfoCellObject* object = [UserInfoCellObject objectWithUser: user];
        
        [objects addObject: object];
        
        if (object.user.imagePath > 0)
        {
            NSArray* usersWithAvatars = [self buildCellObjectsWithUsersWithAvatars: users];
            
            NSMutableArray* tmp = usersWithAvatars.mutableCopy;
            
            [usersWithAvatars enumerateObjectsUsingBlock: ^(UserWithAvatarCellObject*  _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
               
                if ([obj.user.username isEqualToString: object.user.username])
                {
                    [tmp removeObject: object];
                }
            }];
            
            usersWithAvatars = tmp.copy;
            
            [objects addObjectsFromArray: usersWithAvatars];
        }
        
    }];
    
    return objects.copy;
}

- (NSArray*) buildCellObjectsWithUsersWithAvatars: (NSArray*) usersWithAvatars
{
    NSMutableArray* objects = [NSMutableArray new];
    
    [usersWithAvatars enumerateObjectsUsingBlock: ^(UserInfoPlainObject*  _Nonnull user, NSUInteger idx, BOOL * _Nonnull stop) {
    
        UserWithAvatarCellObject* object = [UserWithAvatarCellObject objectWithUser: user];
        
        [objects addObject: object];
    }];
    
    return objects.copy;
}


@end

