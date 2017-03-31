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
