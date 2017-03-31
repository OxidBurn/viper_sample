//
//  OperationsFactoryAssebmly.h
//  ViperSampleProject
//
//  Created by Nikolay Chaban on 3/30/17.
//  Copyright © 2017 Nikolay Chaban. All rights reserved.
//

// Frameworks
#import <Typhoon/Typhoon.h>
#import <RamblerTyphoonUtils/AssemblyCollector.h>

// Classes
#import "DownloadOperationFactory.h"


@interface OperationsFactoryAssebmly : TyphoonAssembly <RamblerInitialAssembly>

- (DownloadOperationFactory*) downloadOperationFactory;

@end
