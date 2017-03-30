//
//  OperationScheduler.h
//  ViperSampleProject
//
//  Created by Nikolay Chaban on 3/29/17.
//  Copyright © 2017 Nikolay Chaban. All rights reserved.
//

/**
 @author Nikolay Chaban
 
 The protocol defines an object, which is responsible for scheduling a number of operations and solving different synchronization tasks.
 */
@protocol OperationScheduler <NSObject>

/**
 @author Nikolay Chaban
 
 The method adds a new operation to the scheduler's inner queue
 
 @param operation Any NSOperation
 */
- (void) addOperation: (NSOperation*) operation;

@end
