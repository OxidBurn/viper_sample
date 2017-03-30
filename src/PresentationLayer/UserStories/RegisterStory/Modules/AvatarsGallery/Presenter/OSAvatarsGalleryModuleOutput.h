//
//  OSAvatarsGalleryModuleOutput.h
//  ViperSampleProject
//
//  Created by Lera Mozgovaya on 3/30/17.
//  Copyright © 2017 Nikolay Chaban. All rights reserved.
//

// Frameworks
#import <ViperMcFlurry/ViperMcFlurry.h>

@protocol OSAvatarsGalleryModuleOutput <RamblerViperModuleOutput>

- (void) didSelectCellWithAvatar: (NSString*) avatarName;

@end
