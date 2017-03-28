//
//  FakeDataGenerator.m
//  ViperSampleProject
//
//  Created by Nikolay Chaban on 3/24/17.
//  Copyright © 2017 Nikolay Chaban. All rights reserved.
//

#import "FakeDataGenerator.h"

static NSString* fullName  = @"UserFullNameKey";
static NSString* email     = @"UserEmailKey";
static NSString* imagePath = @"UserImagePathKey";
static NSString* login     = @"UserLoginKey";
static NSString* userID    = @"UserIdentifier";

@implementation FakeDataGenerator

+ (NSDictionary*) generateFakeLoginResponseWithLogin: (NSString*) value
{
    NSNumber* userIDValue = @(arc4random()*100000);
    
    NSDictionary* responseDic = @{email     : @"a.hopkins@gmail.com",
                                  fullName  : @"Hopkins Anthony",
                                  imagePath : @"HopkinsAvatar",
                                  login     : value,
                                  userID    : userIDValue};
    
    return responseDic;
}

@end
