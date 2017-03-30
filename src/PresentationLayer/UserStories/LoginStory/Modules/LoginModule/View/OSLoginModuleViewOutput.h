//
//  OSLoginModuleViewOutput.h
//  ViperSampleProject
//
//  Created by Nikolay Chaban on 18/03/2017.
//  Copyright © 2017 OnSight. All rights reserved.
//

// Frameworks
@import Foundation;

// Protocols
@protocol OSLoginModuleViewOutput <NSObject>

/**
 @author Nikolay Chaban
 
 Method which inform presenter, that view is ready for a work
 */
- (void) didTriggerViewReadyEvent;


/**
 @author Chaban Nikolay
 
 Method for setuping all view parameters, when controller view is loaded
 */
- (void) setupView;


/**
 @author Chaban Nikolay
 
 Send request to the server with login info
 */
- (void) sendLoginRequest;


/**
 @author Chaban Nikolay
 
 Show Register screen
 */
- (void) instantiateRegisterButtonClicked;


/**
 @author Valeria Mozghova
 
  Show AllUsers screen
 */
- (void) didTapShowAllUsers;

@end
