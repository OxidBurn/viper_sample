//
//  AvatarCollectionCell.m
//  ViperSampleProject
//
//  Created by Lera Mozgovaya on 3/30/17.
//  Copyright © 2017 Nikolay Chaban. All rights reserved.
//

#import "AvatarCollectionCell.h"
#import "AvatarCellObject.h"

@interface AvatarCollectionCell()

// properties

@property (weak, nonatomic) IBOutlet UIImageView* avatrImgView;

// methods

@end

@implementation AvatarCollectionCell


#pragma mark - NICollectionCell  -

- (BOOL) shouldUpdateCellWithObject: (AvatarCellObject*) object
{
    NSLog(@"dfdf %@", object.avatar);
    
    self.avatrImgView.image = [UIImage imageNamed: object.avatar];
    
    return YES;
}

@end
