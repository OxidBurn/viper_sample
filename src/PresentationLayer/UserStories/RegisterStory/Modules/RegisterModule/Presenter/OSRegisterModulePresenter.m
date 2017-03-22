//
//  OSRegisterModulePresenter.m
//  ViperSampleProject
//
//  Created by Nikolay Chaban on 18/03/2017.
//  Copyright © 2017 OnSight. All rights reserved.
//

#import "OSRegisterModulePresenter.h"

// Classes
#import "OSRegisterModuleViewInput.h"
#import "OSRegisterModuleInteractorInput.h"
#import "OSRegisterModuleRouterInput.h"

@implementation OSRegisterModulePresenter


#pragma mark - Methods OSRegisterModuleModuleInput -

- (void) configureModule 
{
	// Starting configuration of the module, which dependent to the view state
}


#pragma mark - Methods OSRegisterModuleViewOutput -

- (void) didTriggerViewReadyEvent 
{
	[self.view setupInitialState];
}


#pragma mark - Methods OSRegisterModuleInteractorOutput -


@end
