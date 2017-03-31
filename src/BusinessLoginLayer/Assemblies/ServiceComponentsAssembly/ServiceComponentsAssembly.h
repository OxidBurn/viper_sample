//
//  ServiceComponentsAssembly.h
//  ViperSampleProject
//
//  Created by Nikolay Chaban on 3/23/17.
//  Copyright © 2017 Nikolay Chaban. All rights reserved.
//

// Framework
#import <Typhoon/Typhoon.h>
#import <RamblerTyphoonUtils/AssemblyCollector.h>

// Protocols
#import "ServiceComponents.h"

// Classes
#import "OperationsFactoryAssebmly.h"

@interface ServiceComponentsAssembly : TyphoonAssembly <ServiceComponents, RamblerInitialAssembly>

/**
 @author Nikolay Chaban
 
 Assembly for injection NSOperation factories
 */
@property (strong, nonatomic) OperationsFactoryAssebmly* operationFactoriesAssembly;

@end
