//
//  UserInfoCell.m
//  ViperSampleProject
//
//  Created by Lera Mozgovaya on 3/29/17.
//  Copyright © 2017 Nikolay Chaban. All rights reserved.
//

#import "UserInfoCell.h"

@interface UserInfoCell()

// properties

@property (weak, nonatomic) IBOutlet UILabel* fullnameLabel;

@property (weak, nonatomic) IBOutlet UILabel* usernameLabel;

@property (weak, nonatomic) IBOutlet UILabel* emailLabel;

// methods


@end

@implementation UserInfoCell


#pragma mark - NICell delegate method -

- (BOOL) shouldUpdateCellWithObject: (UserInfoCellObject*) object
{
    self.fullnameLabel.text = object.user.fullName;
    self.usernameLabel.text = object.user.username;
    self.emailLabel.text    = object.user.email;
    
    return YES;
}



@end
