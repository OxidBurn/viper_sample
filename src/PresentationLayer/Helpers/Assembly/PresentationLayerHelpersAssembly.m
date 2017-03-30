//
//  PresentationLayerHelpersAssembly.m
//  ViperSampleProject
//
//  Created by Nikolay Chaban on 3/24/17.
//  Copyright © 2017 Nikolay Chaban. All rights reserved.
//

#import "PresentationLayerHelpersAssembly.h"

// Classes
#import "RegistrationInfoValidator.h"

@implementation PresentationLayerHelpersAssembly


- (RegistrationInfoValidator*) registrationValidator
{
    return [TyphoonDefinition withClass: [RegistrationInfoValidator class]];
}

@end
