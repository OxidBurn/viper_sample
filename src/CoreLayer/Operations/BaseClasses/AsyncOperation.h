//
//  AsyncOperation.h
//  ViperSampleProject
//
//  Created by Nikolay Chaban on 3/29/17.
//  Copyright © 2017 Nikolay Chaban. All rights reserved.
//


/**
 @author Nikolay Chaban
 
 The base NSOperation class, which provides the asynchronyous capabilities to all of its subclasses.
 */
@interface AsyncOperation : NSOperation

/**
 @author Nikolay Chaban
 
 This method is called in a separate thread after operation start. Should be overriden.
 */
- (void) main;

/**
 @author Nikolay Chaban
 
 This method sets all operation flags to appropriate values. Should be manually called after operation executes.
 */
- (void) complete;

@end
