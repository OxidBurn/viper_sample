//
//  PresentationLayerHelpersAssembly.h
//  ViperSampleProject
//
//  Created by Nikolay Chaban on 3/24/17.
//  Copyright © 2017 Nikolay Chaban. All rights reserved.
//

// Frameworks
#import <Typhoon/Typhoon.h>
#import <AssemblyCollector.h>

@class RegistrationInfoValidator;

/**
 @author Nikolay Chaban
 
 A TyphoonAssembly which is responsible for creating helper objects for presentation layer
 */
@interface PresentationLayerHelpersAssembly : TyphoonAssembly <RamblerInitialAssembly>

- (RegistrationInfoValidator*) registrationValidator;

@end
