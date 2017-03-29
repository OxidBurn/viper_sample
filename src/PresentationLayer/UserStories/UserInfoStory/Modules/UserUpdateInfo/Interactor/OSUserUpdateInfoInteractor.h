//
//  OSUserUpdateInfoInteractor.h
//  ViperSampleProject
//
//  Created by Nikolay Chaban on 29/03/2017.
//  Copyright © 2017 OnSight. All rights reserved.
//

// Classes
#import "OSUserUpdateInfoInteractorInput.h"

// Protocols
@protocol OSUserUpdateInfoInteractorOutput;

@interface OSUserUpdateInfoInteractor : NSObject <OSUserUpdateInfoInteractorInput>

@property (nonatomic, weak) id<OSUserUpdateInfoInteractorOutput> output;

@end
