//
//  OSUserInfoInteractor.h
//  ViperSampleProject
//
//  Created by Valeria Mozghova on 28/03/2017.
//  Copyright © 2017 OnSight. All rights reserved.
//

// Classes
#import "OSUserInfoInteractorInput.h"

// Protocols
@protocol OSUserInfoInteractorOutput;
@protocol ROSPonsomizer;

@interface OSUserInfoInteractor : NSObject <OSUserInfoInteractorInput>

@property (nonatomic, weak) id<OSUserInfoInteractorOutput> output;
@property (nonatomic, strong) id<ROSPonsomizer> ponsomizer;

@end
