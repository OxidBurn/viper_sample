//
//  OSLoginModuleInteractor.h
//  ViperSampleProject
//
//  Created by Nikolay Chaban on 18/03/2017.
//  Copyright © 2017 OnSight. All rights reserved.
//

// Classes
#import "OSLoginModuleInteractorInput.h"

// Protocols
@protocol OSLoginModuleInteractorOutput;
@protocol LoginService;

@interface OSLoginModuleInteractor : NSObject <OSLoginModuleInteractorInput>

@property (nonatomic, weak) id<OSLoginModuleInteractorOutput> output;
@property (strong, nonatomic) id<LoginService> loginService;

@end
