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

@implementation OSLoginModuleInteractor


#pragma mark - Methods OSLoginModuleInteractorInput -

- (void) loginUserToServerWithName: (NSString*) name
                      withPassword: (NSString*) password
{
    /**
     @author Nikolay Chaban
     
     Call method in login service for processing login server request
     */
    [self.loginService loginToServerWithName: name
                                    withPass: password
                              withCompletion: ^(BOOL isSuccess, NSError* error) {
                                  
                                  if ( isSuccess )
                                      [self.output didLoggingUserToServerWithSuccess];
                                  else
                                      [self.output didLoggingUserToServerWithError: error];
                                  
                              }];
}

@end