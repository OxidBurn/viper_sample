//
//  OSAllUsersAssembly_Testable.h
//  ViperSampleProject
//
//  Created by Valeria Mozghova on 29/03/2017.
//  Copyright © 2017 OnSight. All rights reserved.
//

#import "OSAllUsersAssembly.h"

// Classes
@class OSAllUsersViewController;
@class OSAllUsersInteractor;
@class OSAllUsersPresenter;
@class OSAllUsersRouter;

/**
 @author Valeria Mozghova

 Extension, which made private fabric methods is opened for testing. 
 */
@interface OSAllUsersAssembly ()

- (OSAllUsersViewController*) viewAllUsers;
- (OSAllUsersPresenter*) presenterAllUsers;
- (OSAllUsersInteractor*) interactorAllUsers;
- (OSAllUsersRouter*) routerAllUsers;

@end
