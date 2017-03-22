//
//  ModuleAssemblyBase.h
//  ViperSampleProject
//
//  Created by Nikolay Chaban on 3/23/17.
//  Copyright © 2017 Nikolay Chaban. All rights reserved.
//

// Frameworks
#import <Typhoon/Typhoon.h>

// Classes
@protocol ServiceComponents;

@interface ModuleAssemblyBase : TyphoonAssembly

@property (nonatomic, strong, readonly) TyphoonAssembly <ServiceComponents>* serviceComponents;

@end
