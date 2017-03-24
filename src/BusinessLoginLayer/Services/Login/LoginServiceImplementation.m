//
//  LoginServiceImplementation.m
//  ViperSampleProject
//
//  Created by Nikolay Chaban on 3/22/17.
//  Copyright © 2017 Nikolay Chaban. All rights reserved.
//

#import "LoginServiceImplementation.h"

// Classes
#import "FakeDataGenerator.h"
#import "UserDataResponseParser.h"

@implementation LoginServiceImplementation


#pragma mark - Login service methods -

- (void) loginToServerWithName: (NSString*)            name
                      withPass: (NSString*)            password
                withCompletion: (LoginCompletionBlock) completion
{
    /**
     @author Nikolay Chaban
     
     Fake processing of login operation to the server with generating error in case
     when entered user info is empty and call completion block
     In real life in this case, should be implemented url session request to the server
     */
    BOOL isSuccess      = NO;
    NSError* loginError = nil;
    
    if ( name.length > 0 && password.length > 0 )
    {
        isSuccess = YES;
    }
    else
    {
        NSDictionary* userInfo = @{
                                   NSLocalizedDescriptionKey: NSLocalizedString(@"Login parameters is empty", nil),
                                   NSLocalizedFailureReasonErrorKey: NSLocalizedString(@"Login parameters is wrong", nil),
                                   NSLocalizedRecoverySuggestionErrorKey: NSLocalizedString(@"Please check entered fields and try again", nil)
                                   };
        
        loginError = [NSError errorWithDomain: NSURLErrorDomain
                                         code: -25
                                     userInfo: userInfo];
    }
    
    /**
     @author Nikolay Chaban
     
     Generation fake login request response dictionary,
     Dictionary contain info:
     - full name
     - email
     - username
     - image path
     
     */
    NSDictionary* loginResponse = [FakeDataGenerator generateFakeLoginResponseWithLogin: name];
    
    if ( completion )
        completion(isSuccess, [self.responseParser mapLoginResponse: loginResponse], loginError);
}

@end
