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
static NSString* imageURL  = @"UserImageURLKey";
static NSString* login     = @"UserLoginKey";
static NSString* userID    = @"UserIdentifier";

@implementation FakeDataGenerator

+ (NSDictionary*) generateFakeLoginResponseWithLogin: (NSString*) value
{
    NSNumber* userIDValue          = @(arc4random()*100000);
    NSString* imageDestinationPath = [NSTemporaryDirectory() stringByAppendingString: @"AHopkinsAvatar.jpg"];
    
    NSDictionary* responseDic = @{email     : @"a.hopkins@gmail.com",
                                  fullName  : @"Hopkins Anthony",
                                  imagePath : imageDestinationPath,
                                  login     : value,
                                  userID    : userIDValue,
                                  imageURL  : @"http://kingofwallpapers.com/anthony-hopkins/anthony-hopkins-012.jpg"};
    
    return responseDic;
}

@end
