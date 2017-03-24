//
//  OSLoginModuleInteractor.h
//  ViperSampleProject
//
//  Created by Nikolay Chaban on 18/03/2017.
//  Copyright © 2017 OnSight. All rights reserved.
//

// Classes
#import "OSLoginModuleInteractorInput.h"

// Protocols
@protocol OSLoginModuleInteractorOutput;
@protocol LoginService;
@protocol UserInfoService;

@interface OSLoginModuleInteractor : NSObject <OSLoginModuleInteractorInput>

@property (nonatomic, weak) id<OSLoginModuleInteractorOutput> output;
@property (strong, nonatomic) id<LoginService> loginService;
@property (strong, nonatomic) id<UserInfoService> userInfoService;

@end
