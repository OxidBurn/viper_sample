//
//  OSLoginModuleInteractor.m
//  ViperSampleProject
//
//  Created by Nikolay Chaban on 18/03/2017.
//  Copyright © 2017 OnSight. All rights reserved.
//

#import "OSLoginModuleInteractor.h"

// Classes
#import "OSLoginModuleInteractorOutput.h"
#import "LoginService.h"
#import "UserInfoService.h"
#import "UserInfoResponseObject.h"
#import "ROSPonsomizer.h"

@implementation OSLoginModuleInteractor


#pragma mark - Methods OSLoginModuleInteractorInput -

- (void) loginUserToServerWithName: (NSString*) name
                      withPassword: (NSString*) password
{
    /**
     @author Nikolay Chaban
     
     Call method in login service for processing login server request
     */
    @weakify(self)
    
    [self.loginService loginToServerWithName: name
                                    withPass: password
                              withCompletion: ^(BOOL isSuccess, UserInfoResponseObject* response, NSError* error) {
                                  
                                  @strongify(self)
                                  
                                  if ( isSuccess )
                                  {
                                      /**
                                       @author Valeriya Mozghovaya
                                       
                                        Searching logged in user in DB
                                       */

                                      UserInfoPlainObject* user = [self obtainUserPlainObjectWithUsername: name];
                                      if (user)
                                      {
                                          [self.output didLoggingUser: user];
                                      }
                                      
                                      else
                                      {
                                          
                                          NSDictionary *userInfo = @{
                                                                     NSLocalizedDescriptionKey: NSLocalizedString(@"Operation was unsuccessful.", nil),
                                                                     NSLocalizedFailureReasonErrorKey: NSLocalizedString(@"No user with such login found", nil),
                                                                     NSLocalizedRecoverySuggestionErrorKey: NSLocalizedString(@"Have you tried turning it off and on again?", nil)
                                                                     };
                                          
                                          NSError* error = [NSError  errorWithDomain: NSPOSIXErrorDomain
                                                                                code: -10
                                                                            userInfo: userInfo];
                                         
                                          [self.output didLoggingUserToServerWithError: error];
                                      }
                                      
                                  }
                                  else
                                      [self.output didLoggingUserToServerWithError: error];
                                  
                              }];
}


#pragma mark - Internal methods -

/**
 method for converting user managed object to plain object

 @param username parameter for searching user in DB
 @return converted user from managed object to plain object
 */
- (UserInfoPlainObject*) obtainUserPlainObjectWithUsername: (NSString*) username
{
    UserInfoPlainObject* user = [self.ponsomizer convertObject: [self.userInfoService obtainUserInfoMOWithUsername: username]];
    
    return user;
}
@end
