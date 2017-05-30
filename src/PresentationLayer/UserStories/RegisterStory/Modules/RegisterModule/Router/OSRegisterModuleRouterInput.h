//
//  OSRegisterModuleRouterInput.h
//  ViperSampleProject
//
//  Created by Nikolay Chaban on 18/03/2017.
//  Copyright © 2017 OnSight. All rights reserved.
//

// Frameworks
@import Foundation;

//Classes
#import "OSAvatarsGalleryModuleOutput.h"

@protocol OSRegisterModuleRouterInput <NSObject>

- (void) openSelectAvatarModuleWithModuleOutput: (id <OSAvatarsGalleryModuleOutput>) moduleOutput;

@end
