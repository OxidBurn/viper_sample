//
//  UserInfoCellObject.m
//  ViperSampleProject
//
//  Created by Lera Mozgovaya on 3/29/17.
//  Copyright © 2017 Nikolay Chaban. All rights reserved.
//

#import "UserInfoCellObject.h"

//Classes
#import "UserInfoCell.h"

@implementation UserInfoCellObject


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
    return [UserInfoCell class];
}

- (UINib*) cellNib
{
    return [UINib nibWithNibName: NSStringFromClass([UserInfoCell class])
                          bundle: [NSBundle mainBundle]];
}

@end
