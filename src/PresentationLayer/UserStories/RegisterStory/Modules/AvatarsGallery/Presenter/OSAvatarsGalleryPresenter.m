//
//  OSAvatarsGalleryPresenter.m
//  ViperSampleProject
//
//  Created by Valeria Mozghova on 30/03/2017.
//  Copyright © 2017 OnSight. All rights reserved.
//

#import "OSAvatarsGalleryPresenter.h"

// Classes
#import "OSAvatarsGalleryViewInput.h"
#import "OSAvatarsGalleryInteractorInput.h"
#import "OSAvatarsGalleryRouterInput.h"

@implementation OSAvatarsGalleryPresenter


#pragma mark - Methods OSAvatarsGalleryModuleInput -

- (void) configureModule 
{
	/**
	@author Valeria Mozghova
	
	Starting configuration of the module, which dependent to the view state
	*/
}


#pragma mark - Methods OSAvatarsGalleryViewOutput -

- (void) didTriggerViewReadyEvent 
{

}

- (void) setupView
{
   NSArray* avatars = [self.interactor obtainAvatarsArray];
    
   [self.view setupInitialStateWithAvatars: avatars];
}

- (void) didSelectAvatar: (NSString*) avatar
{
    [self.moduleOutput didSelectCellWithAvatar: avatar];
}

#pragma mark - Methods OSAvatarsGalleryInteractorOutput -


@end
