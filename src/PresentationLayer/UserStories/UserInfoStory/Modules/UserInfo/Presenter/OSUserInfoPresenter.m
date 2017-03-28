//
//  OSUserInfoPresenter.m
//  ViperSampleProject
//
//  Created by Valeria Mozghova on 28/03/2017.
//  Copyright © 2017 OnSight. All rights reserved.
//

#import "OSUserInfoPresenter.h"

// Classes
#import "OSUserInfoViewInput.h"
#import "OSUserInfoInteractorInput.h"
#import "OSUserInfoRouterInput.h"

@implementation OSUserInfoPresenter


#pragma mark - Methods OSUserInfoModuleInput -

- (void) configureModule 
{
	/**
	@author Valeria Mozghova
	
	Starting configuration of the module, which dependent to the view state
	*/
}

- (void) configureModuleWithUser: (UserInfoPlainObject*) user
{
    [self.view setupInitialStateWithUser: user];
}

#pragma mark - Methods OSUserInfoViewOutput -

- (void) didTriggerViewReadyEvent 
{
	[self.view setupInitialState];
}


#pragma mark - Methods OSUserInfoInteractorOutput -


@end
