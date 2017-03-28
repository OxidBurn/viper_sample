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
                                       @author Nikolay Chaban
                                       
                                       Save/update user info to database, from login request response
                                       */
                                      [self.userInfoService saveOrUpdateUserInfoInDB: response
                                                                      withCompletion: ^(BOOL isUpdate) {
                                                                         
                                                                          [self.output didLoggingUser: [self obtainUserPlainObjectWithID: response.userID]];
                                                                          
                                                                      }];
                                  }
                                  else
                                      [self.output didLoggingUserToServerWithError: error];
                                  
                              }];
}


#pragma mark - Internal methods -

- (UserInfoPlainObject*) obtainUserPlainObjectWithID: (NSNumber*) userID
{
    UserInfoPlainObject* user = [self.ponsomizer convertObject: [self.userInfoService obtainUserInfoMOWithID: userID]];
    
    return user;
}
@end
