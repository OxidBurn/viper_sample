//
//  OSUserUpdateInfoPresenter.m
//  ViperSampleProject
//
//  Created by Nikolay Chaban on 29/03/2017.
//  Copyright © 2017 OnSight. All rights reserved.
//

#import "OSUserUpdateInfoPresenter.h"

// Classes
#import "OSUserUpdateInfoViewInput.h"
#import "OSUserUpdateInfoInteractorInput.h"
#import "OSUserUpdateInfoRouterInput.h"

@implementation OSUserUpdateInfoPresenter


#pragma mark - Methods OSUserUpdateInfoModuleInput -

- (void) configureModule 
{
	// Starting configuration of the module, which dependent to the view state
}


#pragma mark - Methods OSUserUpdateInfoViewOutput -

- (void) didTriggerViewReadyEvent 
{
	[self.view setupInitialState];
}


#pragma mark - Methods OSUserUpdateInfoInteractorOutput -


@end
