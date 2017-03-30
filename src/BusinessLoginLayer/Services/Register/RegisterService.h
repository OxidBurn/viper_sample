//
//  RegisterService.h
//  ViperSampleProject
//
//  Created by Nikolay Chaban on 3/23/17.
//  Copyright © 2017 Nikolay Chaban. All rights reserved.
//

// Frameworks
@import Foundation;

// Classes
#import "RegistrationParametersModel.h"

///-------------------------------------------------
/// @name Typedef Blocks definitions
///-------------------------------------------------
typedef void(^RegistrationCompletionBlock)(BOOL isSuccess, NSError* error);

/**
 @author Nikolay Chaban
 
 The service is designed for performance of procedure of user registration
 */

@protocol RegisterService <NSObject>

// required methods
@required

- (void) sendRegistrationRequestWithLogin: (RegistrationParametersModel*) parameter
                           withCompletion: (RegistrationCompletionBlock)  completion;

// optional methods
@optional


@end
