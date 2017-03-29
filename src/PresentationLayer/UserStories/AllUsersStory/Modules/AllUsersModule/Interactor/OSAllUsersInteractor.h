//
//  OSAllUsersInteractor.h
//  ViperSampleProject
//
//  Created by Valeria Mozghova on 29/03/2017.
//  Copyright © 2017 OnSight. All rights reserved.
//

// Classes
#import "OSAllUsersInteractorInput.h"

// Protocols
@protocol OSAllUsersInteractorOutput;

@interface OSAllUsersInteractor : NSObject <OSAllUsersInteractorInput>

@property (nonatomic, weak) id<OSAllUsersInteractorOutput> output;

@end
