//
//  LoginService.h
//  ViperSampleProject
//
//  Created by Nikolay Chaban on 3/22/17.
//  Copyright © 2017 Nikolay Chaban. All rights reserved.
//

// Frameworks
@import Foundation;

// Constants
///-------------------------------------------------
/// @name Blocks type definition
///-------------------------------------------------
typedef void(^LoginCompletionBlock)(BOOL isSuccess, id responseObj, NSError* error);

/**
 @author Nikolay Chaban
 
 The service is designed to processing login request
 */

@protocol LoginService <NSObject>

// methods


/**
 @author Nikolay Chaban
 
 Method for loging request to the server

 @param name string user name parameter
 @param password sting user password parameter
 @param completion login request completion block with success bool flag, response plain object and error if exist
 */
- (void) loginToServerWithName: (NSString*)            name
                      withPass: (NSString*)            password
                withCompletion: (LoginCompletionBlock) completion;

@end
