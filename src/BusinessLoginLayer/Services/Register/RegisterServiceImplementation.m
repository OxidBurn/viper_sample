//
//  RegisterServiceImplementation.m
//  ViperSampleProject
//
//  Created by Nikolay Chaban on 3/23/17.
//  Copyright © 2017 Nikolay Chaban. All rights reserved.
//

#import "RegisterServiceImplementation.h"
#import <MagicalRecord/MagicalRecord.h>
#import "UserInfoModelObject.h"

@implementation RegisterServiceImplementation


#pragma mark - Input protocol methods -

- (void) sendRegistrationRequestWithLogin: (RegistrationParametersModel*) parameter
                           withCompletion: (RegistrationCompletionBlock)  completion
{
    BOOL isSuccess                       = YES;
    NSError* registrationCompletionError = nil;
    
    if ( registrationCompletionError )
    {
        isSuccess = NO;
    }
    
    [self saveOrUpdateUserInfoInDB: parameter
                    withCompletion: completion];

    if ( completion )
        completion(isSuccess, registrationCompletionError);
}


#pragma mark - Internal methods -

- (void) saveOrUpdateUserInfoInDB: (RegistrationParametersModel*) info
                   withCompletion: (RegistrationCompletionBlock)  completion
{
    [MagicalRecord saveWithBlock: ^(NSManagedObjectContext* localContext) {
        
        UserInfoModelObject* localPerson = [UserInfoModelObject MR_createEntityInContext: localContext];
        
        localPerson.fullName  = info.fullName;
        localPerson.email     = info.email;
        localPerson.username  = info.userName;
        localPerson.password  = info.confirmPassword;
        localPerson.imagePath = info.imagePath;
        localPerson.imageURL  = info.imageURL;
        localPerson.avatar    = info.avatar;
    }
                      completion: ^(BOOL contextDidSave, NSError * _Nullable error) {
                          
                          if ( completion )
                              completion(contextDidSave, error);
                          
                      }];
}


@end
