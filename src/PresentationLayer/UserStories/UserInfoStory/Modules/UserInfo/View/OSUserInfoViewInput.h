//
//  OSUserInfoViewInput.h
//  ViperSampleProject
//
//  Created by Valeria Mozghova on 28/03/2017.
//  Copyright © 2017 OnSight. All rights reserved.
//

// Frameworks
@import Foundation;

//Classes

#import "UserInfoPlainObject.h"

// Protocols
@protocol OSUserInfoViewInput <NSObject>

/**
 @author Valeria Mozghova

 Method for setup initial state of view
 */
- (void) setupInitialState;

- (void) setupInitialStateWithUser: (UserInfoPlainObject*) user;

@end
