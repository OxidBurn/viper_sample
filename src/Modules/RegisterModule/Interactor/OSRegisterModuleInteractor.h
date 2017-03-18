//
//  OSRegisterModuleInteractor.h
//  ViperSampleProject
//
//  Created by Nikolay Chaban on 18/03/2017.
//  Copyright © 2017 OnSight. All rights reserved.
//

// Classes
#import "OSRegisterModuleInteractorInput.h"

// Protocols
@protocol OSRegisterModuleInteractorOutput;

@interface OSRegisterModuleInteractor : NSObject <OSRegisterModuleInteractorInput>

@property (nonatomic, weak) id<OSRegisterModuleInteractorOutput> output;

@end
