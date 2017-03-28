//
//  OSLoginModuleInteractorOutput.h
//  ViperSampleProject
//
//  Created by Nikolay Chaban on 18/03/2017.
//  Copyright © 2017 OnSight. All rights reserved.
//

//Frameworks
@import Foundation;

//Classes
#import "UserInfoPlainObject.h"

@protocol OSLoginModuleInteractorOutput <NSObject>


- (void) didLoggingUserToServerWithSuccess;

- (void) didLoggingUserToServerWithError: (NSError*) error;

- (void) didLoggingUser: (UserInfoPlainObject*) user;

@end
