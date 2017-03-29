//
//  OSAllUsersAssembly.h
//  ViperSampleProject
//
//  Created by Valeria Mozghova on 29/03/2017.
//  Copyright © 2017 OnSight. All rights reserved.
//

// Frameworks
#import <Typhoon/Typhoon.h>
#import <RamblerTyphoonUtils/AssemblyCollector.h>

#import "ModuleAssemblyBase.h"
#import "PonsomizerAssembly.h"

/**
 @author Valeria Mozghova

 AllUsers module
 */
@interface OSAllUsersAssembly : ModuleAssemblyBase <RamblerInitialAssembly>

@property (nonatomic, strong) PonsomizerAssembly* ponsomizerAssembly;

@end
