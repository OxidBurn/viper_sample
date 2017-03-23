//
//  RegistrationInfoValidator.m
//  ViperSampleProject
//
//  Created by Nikolay Chaban on 3/24/17.
//  Copyright © 2017 Nikolay Chaban. All rights reserved.
//

#import "RegistrationInfoValidator.h"

@implementation RegistrationInfoValidator

- (NSError*) checkForCorrectedEnteredInfo: (RegistrationParametersModel*) info
{
    NSError* passwordError = nil;
    
    if ( info.userName.length < 2 )
    {
        passwordError = [NSError errorWithDomain: NSMachErrorDomain
                                            code: -25
                                        userInfo: @{NSLocalizedFailureReasonErrorKey : @"Please enter correct user name",
                                                    NSLocalizedDescriptionKey        : @"Please enter correct user name"}];
    }
    else
        if ( info.password.length < 6 || info.confirmPassword.length < 6 )
        {
            passwordError = [NSError errorWithDomain: NSMachErrorDomain
                                                code: -24
                                            userInfo: @{NSLocalizedFailureReasonErrorKey : @"Entered passwords should be longer than 6 symbols",
                                                        NSLocalizedDescriptionKey        : @"Entered passwords should be longer than 6 symbols"}];
        }
        else
            if ( [info.password isEqualToString: info.confirmPassword] == NO )
            {
                passwordError = [NSError errorWithDomain: NSMachErrorDomain
                                                    code: -23
                                                userInfo: @{NSLocalizedFailureReasonErrorKey : @"Entered passwords is not match.",
                                                            NSLocalizedDescriptionKey        : @"Entered passwords is not match."}];
            }
    
    return passwordError;
}

@end
