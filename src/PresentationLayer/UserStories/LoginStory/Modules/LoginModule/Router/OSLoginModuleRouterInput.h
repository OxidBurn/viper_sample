//
//  OSLoginModuleRouterInput.h
//  ViperSampleProject
//
//  Created by Nikolay Chaban on 18/03/2017.
//  Copyright © 2017 OnSight. All rights reserved.
//

// Frameworks
@import Foundation;

@protocol OSLoginModuleRouterInput <NSObject>

/**
 @author Chaban Nikolay
 
 Method for opening Register screen from Login screen with using Storyboard segue
 by pressing on "Register" button
 */
- (void) openRegisterModule;


/**
 @author Chaban Nikolay
 
 Open Register module/screen from Login screen with using transition factory
 This case allow to you, pushed controller to navigation stack from source controller
 */
- (void) instantiateRegisterModule;

@end
