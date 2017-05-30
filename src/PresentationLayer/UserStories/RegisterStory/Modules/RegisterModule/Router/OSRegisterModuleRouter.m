//
//  OSRegisterModuleRouter.m
//  ViperSampleProject
//
//  Created by Nikolay Chaban on 18/03/2017.
//  Copyright © 2017 OnSight. All rights reserved.
//

#import "OSRegisterModuleRouter.h"

// Frameworks
#import <ViperMcFlurry/ViperMcFlurry.h>


@implementation OSRegisterModuleRouter


#pragma mark - Methods OSRegisterModuleRouterInput -

- (void) openSelectAvatarModuleWithModuleOutput: (id<OSAvatarsGalleryModuleOutput>) moduleOutput
{
    [[self.transitionHandler openModuleUsingSegue: @"ShowAvatarsGallery"] thenChainUsingBlock: ^id<OSAvatarsGalleryModuleOutput> (id<RamblerViperModuleInput> moduleInput) {
        
        return moduleOutput;
    }];
}

@end
