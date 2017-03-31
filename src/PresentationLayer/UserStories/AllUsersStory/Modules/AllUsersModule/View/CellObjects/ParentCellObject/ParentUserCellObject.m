//
//  ParentUserCellObject.m
//  ViperSampleProject
//
//  Created by Lera Mozgovaya on 3/31/17.
//  Copyright © 2017 Nikolay Chaban. All rights reserved.
//

#import "ParentUserCellObject.h"

@implementation ParentUserCellObject

#pragma mark - Initialization -

- (instancetype) initWithUser: (UserInfoPlainObject*) user
{
    self = [super init];
    
    if (self)
    {
        _user = user;
    }
    
    return self;
}

+ (instancetype) objectWithUser: (UserInfoPlainObject*) user
{
    return [[self alloc] initWithUser: user];
}

@end
