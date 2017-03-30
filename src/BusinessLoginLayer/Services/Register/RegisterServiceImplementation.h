//
//  RegisterServiceImplementation.h
//  ViperSampleProject
//
//  Created by Nikolay Chaban on 3/23/17.
//  Copyright © 2017 Nikolay Chaban. All rights reserved.
//

// Frameworks

#import <Foundation/Foundation.h>

// Classes
#import "RegisterService.h"
#import "RegistrationInfoValidator.h"

@interface RegisterServiceImplementation : NSObject <RegisterService>

@property (strong, nonatomic) RegistrationInfoValidator* registrationValidator;

@end
