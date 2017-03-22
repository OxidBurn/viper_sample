//
//  OSLoginModuleViewInput.h
//  ViperSampleProject
//
//  Created by Nikolay Chaban on 18/03/2017.
//  Copyright © 2017 OnSight. All rights reserved.
//

// Frameworks
@import Foundation;

typedef void (^LoginModuleViewLoginDataResultBlock)(NSString* login, NSString* password);

// Protocols
@protocol OSLoginModuleViewInput <NSObject>

/**
 @author Nikolay Chaban

 Method for setup initial state of view
 */
- (void) setupInitialState;


/**
 @author Nikolay Chaban
 
 Method with returning login info data for request to server, login string and password string

 @param resultBlock block with string login info
 */
- (void) getDataWithResultBlock: (LoginModuleViewLoginDataResultBlock) resultBlock;


/**
 @author Nikolay Chaban
 
 Open User info screen
 */
- (void) showLoginSuccessMessage;


/**
 @author Nikolay Chaban
 
 Show alert view with error

 @param error error with failed request info
 */
- (void) showErrorWithLogin: (NSError*) error;

@end
