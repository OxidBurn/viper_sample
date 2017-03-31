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


/**
 @author Valeria Mozghova
 
 Method which says that avatar was selected for future setting it to module which called avatarGallary module

 @param avatarName name of selected avatar
 */
- (void) didSelectCellWithAvatar: (NSString*) avatarName;

@end
