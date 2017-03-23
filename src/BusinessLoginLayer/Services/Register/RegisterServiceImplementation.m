//
//  RegisterServiceImplementation.m
//  ViperSampleProject
//
//  Created by Nikolay Chaban on 3/23/17.
//  Copyright © 2017 Nikolay Chaban. All rights reserved.
//

#import "RegisterServiceImplementation.h"

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
    
    if ( completion )
        completion(isSuccess, registrationCompletionError);
}


#pragma mark - Internal methods -



@end
