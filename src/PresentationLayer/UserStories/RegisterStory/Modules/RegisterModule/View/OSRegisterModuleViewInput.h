//
//  OSRegisterModuleViewInput.h
//  ViperSampleProject
//
//  Created by Nikolay Chaban on 18/03/2017.
//  Copyright © 2017 OnSight. All rights reserved.
//

// Frameworks
@import Foundation;

// Protocols
@protocol OSRegisterModuleViewInput <NSObject>

/**
 @author Nikolay Chaban

 Method for setup initial state of view
 */
- (void) setupInitialState;


/**
 @author Nikolay Chaban
 
 Grab entered user info from text fields

 @return string value from user name text field
 */
- (NSString*) obtainUserName;
- (NSString*) obtainUserPassword;
- (NSString*) obtainUserConfirmPassword;
- (NSString*) obtainFullName;
- (NSString*) obtainEmail;

- (void) didFinishRegistrationWithSuccessOrError: (NSError*) error;

@end
