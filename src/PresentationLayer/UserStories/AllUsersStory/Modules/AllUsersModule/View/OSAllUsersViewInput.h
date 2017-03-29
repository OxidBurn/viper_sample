//
//  OSAllUsersViewInput.h
//  ViperSampleProject
//
//  Created by Valeria Mozghova on 29/03/2017.
//  Copyright © 2017 OnSight. All rights reserved.
//

// Frameworks
@import Foundation;

// Protocols
@protocol OSAllUsersViewInput <NSObject>

/**
 @author Valeria Mozghova

 Method for setup initial state of view
 */
- (void) setupInitialState;

- (void) setupViewStateWithUsersArray: (NSArray*) users;

@end
