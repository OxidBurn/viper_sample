//
//  OSAllUsersModuleInput.h
//  ViperSampleProject
//
//  Created by Valeria Mozghova on 29/03/2017.
//  Copyright © 2017 OnSight. All rights reserved.
//

// Frameworks
@import Foundation;
#import <ViperMcFlurry/ViperMcFlurry.h>

// Protocols
@protocol OSAllUsersModuleInput <RamblerViperModuleInput>

/**
 @author Valeria Mozghova

 Method initialized start configuration of current module
 */
- (void) configureModule;

@end
