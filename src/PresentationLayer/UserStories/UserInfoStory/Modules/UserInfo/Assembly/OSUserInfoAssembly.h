//
//  OSUserInfoAssembly.h
//  ViperSampleProject
//
//  Created by Valeria Mozghova on 28/03/2017.
//  Copyright © 2017 OnSight. All rights reserved.
//

// Frameworks
#import <Typhoon/Typhoon.h>
#import <RamblerTyphoonUtils/AssemblyCollector.h>

// Class
#import "ModuleAssemblyBase.h"

//Protocols
@class PonsomizerAssembly;

/**
 @author Valeria Mozghova

 UserInfo module
 */
@interface OSUserInfoAssembly : ModuleAssemblyBase <RamblerInitialAssembly>

@property (nonatomic, strong) PonsomizerAssembly* ponsomizerAssembly;

@end
