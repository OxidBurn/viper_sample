//
//  RegistrationInfoValidator.h
//  ViperSampleProject
//
//  Created by Nikolay Chaban on 3/24/17.
//  Copyright © 2017 Nikolay Chaban. All rights reserved.
//

// Classes

#import "RegistrationParametersModel.h"

@interface RegistrationInfoValidator : NSObject

- (NSError*) checkForCorrectedEnteredInfo: (RegistrationParametersModel*) info;

@end
