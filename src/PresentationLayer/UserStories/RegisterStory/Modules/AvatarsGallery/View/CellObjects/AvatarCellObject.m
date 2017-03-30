//
//  AvatarCellObject.m
//  ViperSampleProject
//
//  Created by Lera Mozgovaya on 3/30/17.
//  Copyright © 2017 Nikolay Chaban. All rights reserved.
//

#import "AvatarCellObject.h"

// Classes
#import "AvatarCollectionCell.h"


@implementation AvatarCellObject


#pragma mark - Initialization

- (instancetype) initWithAvatar: (UIImage*) avatar
{
    self = [super init];
    
    if (self)
    {
        _avatar = avatar;
    }
    
    return self;
}

+ (instancetype) objectWithAvatar: (UIImage*) avatar
{
    return [[self alloc] initWithAvatar: avatar];
}


#pragma mark - <NICollectionViewNibCellObject>

- (UINib*) collectionViewCellNib
{
    return [UINib nibWithNibName: NSStringFromClass ([AvatarCollectionCell class])
                          bundle: nil];
}

- (Class) collectionViewCellClass
{
    return [AvatarCollectionCell class];
}

@end
