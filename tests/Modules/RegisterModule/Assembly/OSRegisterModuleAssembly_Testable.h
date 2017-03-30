//
//  OSRegisterModuleAssembly_Testable.h
//  ViperSampleProject
//
//  Created by Nikolay Chaban on 23/03/2017.
//  Copyright © 2017 OnSight. All rights reserved.
//

#import "OSRegisterModuleAssembly.h"

// Classes
@class OSRegisterModuleViewController;
@class OSRegisterModuleInteractor;
@class OSRegisterModulePresenter;
@class OSRegisterModuleRouter;

/**
 @author Nikolay Chaban

 Extension, which made private fabric methods is opened for testing. 
 */
@interface OSRegisterModuleAssembly ()

- (OSRegisterModuleViewController*) viewRegisterModule;
- (OSRegisterModulePresenter*) presenterRegisterModule;
- (OSRegisterModuleInteractor*) interactorRegisterModule;
- (OSRegisterModuleRouter*) routerRegisterModule;

@end
