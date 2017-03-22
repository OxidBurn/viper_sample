//
//  OSLoginModuleAssembly_Testable.h
//  ViperSampleProject
//
//  Created by Nikolay Chaban on 18/03/2017.
//  Copyright © 2017 OnSight. All rights reserved.
//

#import "OSLoginModuleAssembly.h"

// Classes
@class OSLoginModuleViewController;
@class OSLoginModuleInteractor;
@class OSLoginModulePresenter;
@class OSLoginModuleRouter;

/**
 @author Nikolay Chaban

 Extension, which made private fabric methods is opened for testing. 
 */
@interface OSLoginModuleAssembly ()

- (OSLoginModuleViewController*) viewLoginModule;
- (OSLoginModulePresenter*) presenterLoginModule;
- (OSLoginModuleInteractor*) interactorLoginModule;
- (OSLoginModuleRouter*) routerLoginModule;

@end
