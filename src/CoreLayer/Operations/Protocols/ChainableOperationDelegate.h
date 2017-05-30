//
//  ChainableOperationDelegate.h
//  ViperSampleProject
//
//  Created by Nikolay Chaban on 3/29/17.
//  Copyright © 2017 Nikolay Chaban. All rights reserved.
//

// Frameworks
@import Foundation;

/**
 @author Nikolay Chaban
 
 The chainable operation delegate
 */

@protocol ChainableOperationDelegate <NSObject>

/**
 @author Nikolay Chaban
 
 The method tells a compound operation (usually it poses as the delegate) that the operation is finished (either successfully, or with an error).
 
 @param error The error, produced either by operation or by its dependencies.
 */
- (void) didCompleteChainableOperationWithError: (NSError*) error;

@end
