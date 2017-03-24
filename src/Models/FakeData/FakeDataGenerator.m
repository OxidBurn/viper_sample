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

@implementation FakeDataGenerator

+ (NSDictionary*) generateFakeLoginResponseWithLogin: (NSString*) value
{
    NSDictionary* responseDic = @{email     : @"a.hopkins@gmail.com",
                                  fullName  : @"Hopkins Anthony",
                                  imagePath : @"HopkinsAvatar",
                                  login     : value};
    
    return responseDic;
}

@end
