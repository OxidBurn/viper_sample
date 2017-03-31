//
//  CompoundOperationBase.h
//  ViperSampleProject
//
//  Created by Nikolay Chaban on 3/30/17.
//  Copyright © 2017 Nikolay Chaban. All rights reserved.
//

// Classes
#import "AsyncOperation.h"
#import "ChainableOperation.h"
#import "ChainableOperationDelegate.h"
#import "CompoundOperationQueueInput.h"
#import "CompoundOperationQueueOutput.h"

typedef void(^CompoundOperationResultBlock)(id data, NSError* error);

/**
 @author Nikolay Chaban
 
 The base class for compound operation.
 */
@interface CompoundOperationBase : AsyncOperation <ChainableOperationDelegate>

/**
 @author Nikolay Chaban
 
 This property points, how many operations are allowed to execute in parallel.
 */
@property (assign, nonatomic) NSUInteger maxConcurrentOperationsCount;

/**
 @author Nikolay Chaban
 
 This block is called after the operation is finished.
 */
@property (nonatomic, copy) CompoundOperationResultBlock resultBlock;

/**
 @author Nikolay Chaban
 
 The buffer is used to chain the compound operation with the first suboperation from its queue.
 It can be used to pass some input data for the operations chain.
 */
@property (nonatomic, strong) id<CompoundOperationQueueInput> queueInput;

/**
 @author Nikolay Chaban
 
 The buffer is used to chain the compound operation with the last suboperation from its queue.
 It can be used to obtain the result of operations chain work.
 */
@property (nonatomic, strong) id<CompoundOperationQueueOutput> queueOutput;

/**
 @author Nikolay Chaban
 
 This method adds the provided operation to a compound operation inner queue.
 
 @param operation Chainable NSOperation
 */
- (void) addOperation: (NSOperation<ChainableOperation>*) operation;

@end
