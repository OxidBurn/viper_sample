//
//  UserInfoResponseInfoObject.m
//  ViperSampleProject
//
//  Created by Nikolay Chaban on 3/24/17.
//  Copyright © 2017 Nikolay Chaban. All rights reserved.
//

#import "UserInfoResponseObject.h"

@implementation UserInfoResponseObject


#pragma mark - Description -

- (NSString*) description
{
    return [NSString stringWithFormat: @"Full name: %@, email: %@, UserName: %@", self.fullName, self.email, self.username];
}

@end
