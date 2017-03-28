//
//  OSUserInfoAssembly_Testable.h
//  ViperSampleProject
//
//  Created by Valeria Mozghova on 28/03/2017.
//  Copyright © 2017 OnSight. All rights reserved.
//

#import "OSUserInfoAssembly.h"

// Classes
@class OSUserInfoViewController;
@class OSUserInfoInteractor;
@class OSUserInfoPresenter;
@class OSUserInfoRouter;

/**
 @author Valeria Mozghova

 Extension, which made private fabric methods is opened for testing. 
 */
@interface OSUserInfoAssembly ()

- (OSUserInfoViewController*) viewUserInfo;
- (OSUserInfoPresenter*) presenterUserInfo;
- (OSUserInfoInteractor*) interactorUserInfo;
- (OSUserInfoRouter*) routerUserInfo;

@end
