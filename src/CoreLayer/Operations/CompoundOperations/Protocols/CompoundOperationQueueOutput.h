//
//  CompoundOperationQueueOutput.h
//  ViperSampleProject
//
//  Created by Nikolay Chaban on 3/30/17.
//  Copyright © 2017 Nikolay Chaban. All rights reserved.
//

/**
 @author Nikolay Chaban
 
 The protocol describes an object, capable of processing operation queue output data
 */
@protocol CompoundOperationQueueOutput <NSObject>

/**
 @author Nikolay Chaban
 
 The method setups the operation queue output data.
 */
- (id) obtainOperationQueueOutputData;

@end
