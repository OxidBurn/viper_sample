//
//  OSRegisterModuleInteractor.m
//  ViperSampleProject
//
//  Created by Nikolay Chaban on 18/03/2017.
//  Copyright © 2017 OnSight. All rights reserved.
//

#import "OSRegisterModuleInteractor.h"

// Classes
#import "OSRegisterModuleInteractorOutput.h"
#import "RegisterServiceImplementation.h"
#import "UserInfoService.h"

@implementation OSRegisterModuleInteractor


#pragma mark - Methods OSRegisterModuleInteractorInput -

- (void) sendRegistrationRequestWithParameters: (RegistrationParametersModel*) requestParameter
{
    /**
     @author Nikolay Chaban
     
     Validate for corrected user register info,
     if yes, send request to the server
     */
    if ( [self isValidRegisterInfo: requestParameter] )
    {
        [self.registerService sendRegistrationRequestWithLogin: requestParameter
                                                withCompletion: ^(BOOL isSuccess, NSError* error) {
                                                    
                                                    if ( isSuccess )
                                                    {
                                                        [self.output didRegisterWithSuccess];
                                                    }
                                                    else
                                                    {
                                                        [self.output didSendRequestWithError: error];
                                                    }
                                                    
                                                }];
    }
}

- (BOOL) isValidRegisterInfo: (RegistrationParametersModel*) model
{
    /**
     @author Nikolay Chaban
     
     Check if user entered valid registration info
     Validation:
     1. user name contain at least 2 symbols
     2. password contain more than 6 symbols
     3. password and confirm password is equal
     
     If occured error, call output method for showing error alert
     */
    NSError* validRegisterInfoError = [self.registrationValidator checkForCorrectedEnteredInfo: model];
    
    if ( validRegisterInfoError )
    {
        [self.output didSendRequestWithError: validRegisterInfoError];
        
        return NO;
    }
    else
    {
        return YES;
    }
}

@end
