//
//  OSRegisterModuleModuleInput.h
//  ViperSampleProject
//
//  Created by Nikolay Chaban on 18/03/2017.
//  Copyright © 2017 OnSight. All rights reserved.
//

// Frameworks
@import Foundation;
#import <ViperMcFlurry/ViperMcFlurry.h>

// Protocols
@protocol OSRegisterModuleModuleInput <RamblerViperModuleInput>

/**
 @author Nikolay Chaban

 Method initialized start configuration of current module
 */
- (void) configureModule;

@end
