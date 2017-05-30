//
//  OSUserUpdateInfoModuleInput.h
//  ViperSampleProject
//
//  Created by Nikolay Chaban on 29/03/2017.
//  Copyright © 2017 OnSight. All rights reserved.
//

// Frameworks
@import Foundation;
#import <ViperMcFlurry/ViperMcFlurry.h>

// Classes
#import "UserInfoPlainObject.h"

// Protocols
@protocol OSUserUpdateInfoModuleInput <RamblerViperModuleInput>

/**
 @author Nikolay Chaban

 Method initialized start configuration of current module
 */
- (void) configureModuleWithUser: (UserInfoPlainObject*) user;

@end
