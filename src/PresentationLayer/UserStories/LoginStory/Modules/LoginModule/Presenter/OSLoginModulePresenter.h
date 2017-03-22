//
//  OSLoginModulePresenter.h
//  ViperSampleProject
//
//  Created by Nikolay Chaban on 18/03/2017.
//  Copyright © 2017 OnSight. All rights reserved.
//

// Classes
#import "OSLoginModuleViewOutput.h"
#import "OSLoginModuleInteractorOutput.h"
#import "OSLoginModuleModuleInput.h"

// Protocols
@protocol OSLoginModuleViewInput;
@protocol OSLoginModuleInteractorInput;
@protocol OSLoginModuleRouterInput;

@interface OSLoginModulePresenter : NSObject <OSLoginModuleModuleInput, OSLoginModuleViewOutput, OSLoginModuleInteractorOutput>

@property (nonatomic, weak) id<OSLoginModuleViewInput> view;
@property (nonatomic, strong) id<OSLoginModuleInteractorInput> interactor;
@property (nonatomic, strong) id<OSLoginModuleRouterInput> router;

@end
