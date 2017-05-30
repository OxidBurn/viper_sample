//
//  CompoundOperationQueueInput.h
//  ViperSampleProject
//
//  Created by Nikolay Chaban on 3/30/17.
//  Copyright © 2017 Nikolay Chaban. All rights reserved.
//

/**
 @author Nikolay Chaban
 
 The protocol describes an object, capable of processing operation queue input data.
 */
@protocol CompoundOperationQueueInput <NSObject>

/**
 @author Nikolay Chaban
 
 The method setups input data for operations queue.
 
 @param inputData The input data can be of any kind (array, dictionary, custom object). Type casting and interpreting are the responsibilities of concrete suboperations.
 */
- (void) setOperationQueueInputData: (id) inputData;

@end

