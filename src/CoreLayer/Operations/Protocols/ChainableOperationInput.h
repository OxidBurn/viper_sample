//
//  ChainableOperationInput.h
//  ViperSampleProject
//
//  Created by Nikolay Chaban on 3/29/17.
//  Copyright © 2017 Nikolay Chaban. All rights reserved.
//

typedef BOOL(^ChainableOperationInputTypeValidationBlock)(id data);

/**
 @author Nikolay Chaban
 
 The protocol for the operation input data source
 */

@protocol ChainableOperationInput <NSObject>

/**
 @author Nikolay Chaban
 
 This method returns input data (if there is any) for the operation execution
 
 @param block The data type validation block
 
 @return Data of any kind, that has passed the validation process
 */
- (id) obtainInputDataWithTypeValidationBlock: (ChainableOperationInputTypeValidationBlock) block;

@end
