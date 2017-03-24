//
//  LoginResponseParserImplementation.m
//  ViperSampleProject
//
//  Created by Nikolay Chaban on 3/24/17.
//  Copyright © 2017 Nikolay Chaban. All rights reserved.
//

#import "UserDataResponseParserImplementation.h"

// Classes
#import "UserDataResponseParser.h"
#import "UserInfoResponseInfoObject.h"

static NSString* fullName  = @"UserFullNameKey";
static NSString* email     = @"UserEmailKey";
static NSString* imagePath = @"UserImagePathKey";
static NSString* login     = @"UserLoginKey";

@implementation UserDataResponseParserImplementation


#pragma mark - Protocol methods -

- (id) mapLoginResponse: (NSDictionary*) response
{
    UserInfoResponseInfoObject* userInfoObj = [UserInfoResponseInfoObject new];
    
    userInfoObj.fullName  = response[fullName];
    userInfoObj.email     = response[email];
    userInfoObj.imagePath = response[imagePath];
    userInfoObj.username  = response[login];
    
    return userInfoObj;
}

@end
