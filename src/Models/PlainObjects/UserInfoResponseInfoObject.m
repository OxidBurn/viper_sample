//
//  UserInfoResponseInfoObject.m
//  ViperSampleProject
//
//  Created by Nikolay Chaban on 3/24/17.
//  Copyright © 2017 Nikolay Chaban. All rights reserved.
//

#import "UserInfoResponseInfoObject.h"

@implementation UserInfoResponseInfoObject


#pragma mark - Description -

- (NSString*) debugDescription
{
    return [NSString stringWithFormat: @"Full name: %@, email: %@, UserName: %@", self.fullName, self.email, self.username];
}

@end
