//
//  LoginServiceImplementation.h
//  ViperSampleProject
//
//  Created by Nikolay Chaban on 3/22/17.
//  Copyright © 2017 Nikolay Chaban. All rights reserved.
//

// Frameworks
#import <Foundation/Foundation.h>

// Classes
#import "LoginService.h"

@protocol UserDataResponseParser;

@interface LoginServiceImplementation : NSObject <LoginService>

@property (weak, nonatomic) id<UserDataResponseParser> responseParser;

@end
