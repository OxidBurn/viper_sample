//
//  OSUserInfoModuleInput.h
//  ViperSampleProject
//
//  Created by Valeria Mozghova on 28/03/2017.
//  Copyright © 2017 OnSight. All rights reserved.
//

// Frameworks
@import Foundation;
#import <ViperMcFlurry/ViperMcFlurry.h>

//Classes

#import "UserInfoPlainObject.h"

// Protocols
@protocol OSUserInfoModuleInput <RamblerViperModuleInput>

/**
 @author Valeria Mozghova

 Method initialized start configuration of current module
 */
- (void) configureModule;

- (void) configureModuleWithUser: (UserInfoPlainObject*) user;

@end
