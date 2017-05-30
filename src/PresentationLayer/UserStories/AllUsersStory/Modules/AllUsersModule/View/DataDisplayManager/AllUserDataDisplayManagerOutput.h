//
//  AllUserDataDisplayManagerOutput.h
//  ViperSampleProject
//
//  Created by Nikolay Chaban on 3/31/17.
//  Copyright © 2017 Nikolay Chaban. All rights reserved.
//

// Frameworks
@import Foundation;

/**
 @author Nikolay Chaban
 
 Output protocol for all user data display manager
 */

@protocol AllUserDataDisplayManagerOutput <NSObject>

// required methods
@required

- (void) didTapCellWithUser: (UserInfoPlainObject*) user;

@end
