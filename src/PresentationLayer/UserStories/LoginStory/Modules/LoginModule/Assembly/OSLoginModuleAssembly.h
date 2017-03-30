//
//  OSLoginModuleAssembly.h
//  ViperSampleProject
//
//  Created by Nikolay Chaban on 18/03/2017.
//  Copyright © 2017 OnSight. All rights reserved.
//

// Frameworks
#import <Typhoon/Typhoon.h>
#import <RamblerTyphoonUtils/AssemblyCollector.h>

// Classes
#import "ModuleAssemblyBase.h"

@class PonsomizerAssembly;

/**
 @author Nikolay Chaban

 LoginModule module
 */
@interface OSLoginModuleAssembly : ModuleAssemblyBase <RamblerInitialAssembly>

@property (nonatomic, strong) PonsomizerAssembly* ponsomizerAssembly;

@end
