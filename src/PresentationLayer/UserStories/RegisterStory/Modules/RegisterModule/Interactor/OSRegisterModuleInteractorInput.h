//
//  OSRegisterModuleInteractorInput.h
//  ViperSampleProject
//
//  Created by Nikolay Chaban on 18/03/2017.
//  Copyright © 2017 OnSight. All rights reserved.
//

// Frameworks
@import Foundation;

// Classes
#import "RegistrationParametersModel.h"

@protocol OSRegisterModuleInteractorInput <NSObject>


/**
 @author Nikolay Chaban
 
 Method for procedure registration request

 @param requestParameter request parameter object with user info
 */
- (void) sendRegistrationRequestWithParameters: (RegistrationParametersModel*) requestParameter;


@end
