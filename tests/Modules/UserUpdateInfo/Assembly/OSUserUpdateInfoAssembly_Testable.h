//
//  OSUserUpdateInfoAssembly_Testable.h
//  ViperSampleProject
//
//  Created by Nikolay Chaban on 29/03/2017.
//  Copyright © 2017 OnSight. All rights reserved.
//

#import "OSUserUpdateInfoAssembly.h"

// Classes
@class OSUserUpdateInfoViewController;
@class OSUserUpdateInfoInteractor;
@class OSUserUpdateInfoPresenter;
@class OSUserUpdateInfoRouter;

/**
 @author Nikolay Chaban

 Extension, which made private fabric methods is opened for testing. 
 */
@interface OSUserUpdateInfoAssembly ()

- (OSUserUpdateInfoViewController*) viewUserUpdateInfo;
- (OSUserUpdateInfoPresenter*) presenterUserUpdateInfo;
- (OSUserUpdateInfoInteractor*) interactorUserUpdateInfo;
- (OSUserUpdateInfoRouter*) routerUserUpdateInfo;

@end
