//
//  OSUserUpdateInfoPresenter.h
//  ViperSampleProject
//
//  Created by Nikolay Chaban on 29/03/2017.
//  Copyright © 2017 OnSight. All rights reserved.
//

// Classes
#import "OSUserUpdateInfoViewOutput.h"
#import "OSUserUpdateInfoInteractorOutput.h"
#import "OSUserUpdateInfoModuleInput.h"

// Protocols
@protocol OSUserUpdateInfoViewInput;
@protocol OSUserUpdateInfoInteractorInput;
@protocol OSUserUpdateInfoRouterInput;

@interface OSUserUpdateInfoPresenter : NSObject <OSUserUpdateInfoModuleInput, OSUserUpdateInfoViewOutput, OSUserUpdateInfoInteractorOutput>

@property (nonatomic, weak) id<OSUserUpdateInfoViewInput> view;
@property (nonatomic, strong) id<OSUserUpdateInfoInteractorInput> interactor;
@property (nonatomic, strong) id<OSUserUpdateInfoRouterInput> router;

@end
