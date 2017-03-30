//
//  ChainableOperationOutput.h
//  ViperSampleProject
//
//  Created by Nikolay Chaban on 3/29/17.
//  Copyright © 2017 Nikolay Chaban. All rights reserved.
//

// Frameworks
@import Foundation;

/**
 @author Nikolay Chaban
 
 The protocol for the operation output data container
 */

@protocol ChainableOperationOutput <NSObject>

/**
 @author Nikolay Chaban
 
 The method passes the operation's result to the container
 
 @param outputData The operation's result
 */
- (void) didCompleteChainableOperationWithOutputData: (id) outputData;


@end
