//
//  SyncModuleInteractor.h
//  ViperSampleProject
//
//  Created by Nikolay Chaban on 22/12/2016.
//  Copyright © 2016 OnSight. All rights reserved.
//

#import "SyncModuleInteractorInput.h"

@protocol SyncModuleInteractorOutput;

@interface SyncModuleInteractor : NSObject <SyncModuleInteractorInput>

@property (nonatomic, weak) id<SyncModuleInteractorOutput> output;

@end
