//
//  OSUserUpdateInfoModuleOutput.h
//  ViperSampleProject
//
//  Created by Nikolay Chaban on 3/29/17.
//  Copyright © 2017 Nikolay Chaban. All rights reserved.
//

// Frameworks
#import <ViperMcFlurry/ViperMcFlurry.h>

@protocol OSUserUpdateInfoModuleOutput <RamblerViperModuleOutput>

/**
 @author Nikolay Chaban
 
 Method called when user finished updating all user info
 */
- (void) didUpdateUserInfo;

@end
