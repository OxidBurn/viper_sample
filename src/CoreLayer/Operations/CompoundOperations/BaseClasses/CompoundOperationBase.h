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


/**
 @author Egor Tolstoy
 
 The base class for compound operation.
 */
@interface CompoundOperationBase : AsyncOperation <ChainableOperationDelegate>


@end
