//
//  ChainableOperation.h
//  ViperSampleProject
//
//  Created by Nikolay Chaban on 3/29/17.
//  Copyright © 2017 Nikolay Chaban. All rights reserved.
//

// Classes
#import "ChainableOperationDelegate.h"
#import "ChainableOperationInput.h"
#import "ChainableOperationOutput.h"

/**
 @author Nikolay Chaban
 
 The protocol describes an operation, suited for working in compound operation's chain
 */

@protocol ChainableOperation <NSObject>

/**
 @author Nikolay Chaban
 
 The operation's delegate, which is informed when the operation is finished
 */
@property (nonatomic, weak) id<ChainableOperationDelegate> delegate;

/**
 @author Nikolay Chaban
 
 Input data source for the operation
 */
@property (nonatomic, strong) id<ChainableOperationInput> input;

/**
 @author Nikolay Chaban
 
 The container for the result of operation's work
 */
@property (nonatomic, strong) id<ChainableOperationOutput> output;


@end
