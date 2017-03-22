//
//  OSRegisterModulePresenter.h
//  ViperSampleProject
//
//  Created by Nikolay Chaban on 18/03/2017.
//  Copyright © 2017 OnSight. All rights reserved.
//

// Classes
#import "OSRegisterModuleViewOutput.h"
#import "OSRegisterModuleInteractorOutput.h"
#import "OSRegisterModuleModuleInput.h"

// Protocols
@protocol OSRegisterModuleViewInput;
@protocol OSRegisterModuleInteractorInput;
@protocol OSRegisterModuleRouterInput;

@interface OSRegisterModulePresenter : NSObject <OSRegisterModuleModuleInput, OSRegisterModuleViewOutput, OSRegisterModuleInteractorOutput>

@property (nonatomic, weak) id<OSRegisterModuleViewInput> view;
@property (nonatomic, strong) id<OSRegisterModuleInteractorInput> interactor;
@property (nonatomic, strong) id<OSRegisterModuleRouterInput> router;

@end
