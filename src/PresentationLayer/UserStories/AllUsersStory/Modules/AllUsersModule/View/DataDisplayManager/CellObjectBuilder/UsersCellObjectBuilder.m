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
    }];
    
    return objects.copy;
}

@end
