//
//  OSRegisterModuleAssembly.h
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
#import "PonsomizerAssembly.h"

@protocol RamblerViperModuleFactoryProtocol;

/**
 @author Nikolay Chaban

 RegisterModule module
 */
@interface OSRegisterModuleAssembly : ModuleAssemblyBase <RamblerInitialAssembly>


/**
 @author Nikolay Chaban
 
 Register module factory protocol for depend login module with register

 @return register module factory protocol
 */
- (id<RamblerViperModuleFactoryProtocol>) factoryRegisterModule;

@property (nonatomic, strong) PonsomizerAssembly* ponsomizerAssembly;

@end
