//
//  OSAllUsersPresenter.h
//  ViperSampleProject
//
//  Created by Valeria Mozghova on 29/03/2017.
//  Copyright © 2017 OnSight. All rights reserved.
//

// Classes
#import "OSAllUsersViewOutput.h"
#import "OSAllUsersInteractorOutput.h"
#import "OSAllUsersModuleInput.h"

// Protocols
@protocol OSAllUsersViewInput;
@protocol OSAllUsersInteractorInput;
@protocol OSAllUsersRouterInput;

@interface OSAllUsersPresenter : NSObject <OSAllUsersModuleInput, OSAllUsersViewOutput, OSAllUsersInteractorOutput>

@property (nonatomic, weak) id<OSAllUsersViewInput> view;
@property (nonatomic, strong) id<OSAllUsersInteractorInput> interactor;
@property (nonatomic, strong) id<OSAllUsersRouterInput> router;

@end
