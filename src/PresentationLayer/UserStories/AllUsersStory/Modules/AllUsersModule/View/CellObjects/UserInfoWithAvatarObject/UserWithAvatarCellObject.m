//
//  UserWithAvatarCellObject.m
//  ViperSampleProject
//
//  Created by Lera Mozgovaya on 3/31/17.
//  Copyright © 2017 Nikolay Chaban. All rights reserved.
//

#import "UserWithAvatarCellObject.h"

//Classes
#import "UserWithAvatarCell.h"

@implementation UserWithAvatarCellObject


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


#pragma mark - NICellObject methods

- (Class) cellClass
{
    return [UserWithAvatarCell class];
}

- (UINib*) cellNib
{
    return [UINib nibWithNibName: NSStringFromClass([UserWithAvatarCell class])
                          bundle: [NSBundle mainBundle]];
}

@end
