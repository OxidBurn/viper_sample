//
//  OperationBuffer.h
//  ViperSampleProject
//
//  Created by Nikolay Chaban on 3/30/17.
//  Copyright © 2017 Nikolay Chaban. All rights reserved.
//

// Classes
#import "ChainableOperationInput.h"
#import "ChainableOperationOutput.h"
#import "CompoundOperationQueueInput.h"
#import "CompoundOperationQueueOutput.h"

/**
 @author Nikolay Chaban
 
 The mediator class between compound operation's elements.
 
 We are using it to reduce coupling between two suboperations. It allows us to build any possible combination with different suboperations unawared of each other.
 Besides it, this buffer is used to chain the compound operation with the first and last suboperations from its queue.
 */
@interface OperationBuffer : NSObject <ChainableOperationInput, ChainableOperationOutput, CompoundOperationQueueInput, CompoundOperationQueueOutput>

+ (instancetype) buffer;

@end
