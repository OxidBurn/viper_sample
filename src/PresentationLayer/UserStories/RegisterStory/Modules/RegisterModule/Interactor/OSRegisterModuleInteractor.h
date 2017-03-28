//
//  OSRegisterModuleInteractor.h
//  ViperSampleProject
//
//  Created by Nikolay Chaban on 18/03/2017.
//  Copyright © 2017 OnSight. All rights reserved.
//

// Classes
#import "OSRegisterModuleInteractorInput.h"
#import "RegistrationInfoValidator.h"

// Protocols
@protocol OSRegisterModuleInteractorOutput;
@protocol RegisterService;
@protocol ROSPonsomizer;

@interface OSRegisterModuleInteractor : NSObject <OSRegisterModuleInteractorInput>

@property (nonatomic, weak) id<OSRegisterModuleInteractorOutput> output;

@property (strong, nonatomic) id<RegisterService> registerService;

@property (strong, nonatomic) RegistrationInfoValidator* registrationValidator;

@property (nonatomic, strong) id <ROSPonsomizer> ponsomizer;

@end
