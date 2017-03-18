//
//  OSLoginModulePresenter.m
//  ViperSampleProject
//
//  Created by Nikolay Chaban on 18/03/2017.
//  Copyright © 2017 OnSight. All rights reserved.
//

#import "OSLoginModulePresenter.h"

// Classes
#import "OSLoginModuleViewInput.h"
#import "OSLoginModuleInteractorInput.h"
#import "OSLoginModuleRouterInput.h"

@implementation OSLoginModulePresenter


#pragma mark - Methods OSLoginModuleModuleInput -

- (void) configureModule 
{
	// Starting configuration of the module, which dependent to the view state
}


#pragma mark - Methods OSLoginModuleViewOutput -

- (void) didTriggerViewReadyEvent 
{
	[self.view setupInitialState];
}


#pragma mark - Methods OSLoginModuleInteractorOutput -


@end
