//
//  UserWithAvatarCell.m
//  ViperSampleProject
//
//  Created by Lera Mozgovaya on 3/31/17.
//  Copyright © 2017 Nikolay Chaban. All rights reserved.
//

#import "UserWithAvatarCell.h"

@interface UserWithAvatarCell()

// properties

@property (weak, nonatomic) IBOutlet UIImageView* avatarImgView;

@property (weak, nonatomic) IBOutlet UILabel* fullNameLabel;

@property (weak, nonatomic) IBOutlet UILabel* usernameLabel;

@property (weak, nonatomic) IBOutlet UILabel* emailLabel;

// methods

@end

@implementation UserWithAvatarCell

- (BOOL) shouldUpdateCellWithObject: (UserWithAvatarCellObject*) object
{
    self.avatarImgView.image = [UIImage imageNamed: object.user.avatar];
    
    self.fullNameLabel.text  = object.user.fullName;
    self.usernameLabel.text  = object.user.username;
    self.emailLabel.text     = object.user.email;
    
    return YES;
}

@end
