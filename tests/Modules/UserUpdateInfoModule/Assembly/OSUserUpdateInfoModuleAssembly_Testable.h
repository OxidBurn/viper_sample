//
//  OSUserUpdateInfoModuleAssembly_Testable.h
//  ViperSampleProject
//
//  Created by Nikolay Chaban on 29/03/2017.
//  Copyright © 2017 OnSight. All rights reserved.
//

#import "OSUserUpdateInfoModuleAssembly.h"

// Classes
@class OSUserUpdateInfoModuleViewController;
@class OSUserUpdateInfoModuleInteractor;
@class OSUserUpdateInfoModulePresenter;
@class OSUserUpdateInfoModuleRouter;

/**
 @author Nikolay Chaban

 Extension, which made private fabric methods is opened for testing. 
 */
@interface OSUserUpdateInfoModuleAssembly ()

- (OSUserUpdateInfoModuleViewController*) viewUserUpdateInfoModule;
- (OSUserUpdateInfoModulePresenter*) presenterUserUpdateInfoModule;
- (OSUserUpdateInfoModuleInteractor*) interactorUserUpdateInfoModule;
- (OSUserUpdateInfoModuleRouter*) routerUserUpdateInfoModule;

@end
