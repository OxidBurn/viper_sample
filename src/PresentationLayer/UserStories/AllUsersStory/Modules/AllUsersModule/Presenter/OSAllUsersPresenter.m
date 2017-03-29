//
//  OSAllUsersPresenter.m
//  ViperSampleProject
//
//  Created by Valeria Mozghova on 29/03/2017.
//  Copyright © 2017 OnSight. All rights reserved.
//

#import "OSAllUsersPresenter.h"

// Classes
#import "OSAllUsersViewInput.h"
#import "OSAllUsersInteractorInput.h"
#import "OSAllUsersRouterInput.h"

@implementation OSAllUsersPresenter


#pragma mark - Methods OSAllUsersModuleInput -

- (void) configureModule 
{
	/**
	@author Valeria Mozghova
	
	Starting configuration of the module, which dependent to the view state
	*/
}


#pragma mark - Methods OSAllUsersViewOutput -

- (void) didTriggerViewReadyEvent 
{
	[self.view setupInitialState];
}


#pragma mark - Methods OSAllUsersInteractorOutput -


@end
