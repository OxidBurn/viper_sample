//
//  OSUserInfoPresenter.h
//  ViperSampleProject
//
//  Created by Valeria Mozghova on 28/03/2017.
//  Copyright © 2017 OnSight. All rights reserved.
//

// Classes
#import "OSUserInfoViewOutput.h"
#import "OSUserInfoInteractorOutput.h"
#import "OSUserInfoModuleInput.h"
#import "UserInfoPresenterStateStorage.h"

// Protocols
@protocol OSUserInfoViewInput;
@protocol OSUserInfoInteractorInput;
@protocol OSUserInfoRouterInput;

@interface OSUserInfoPresenter : NSObject <OSUserInfoModuleInput, OSUserInfoViewOutput, OSUserInfoInteractorOutput>

@property (nonatomic, weak) id<OSUserInfoViewInput> view;
@property (nonatomic, strong) id<OSUserInfoInteractorInput> interactor;
@property (nonatomic, strong) id<OSUserInfoRouterInput> router;
@property (strong, nonatomic) UserInfoPresenterStateStorage* presenterStateStorage;

@end
