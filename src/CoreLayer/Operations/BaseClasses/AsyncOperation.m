//
//  AsyncOperation.m
//  ViperSampleProject
//
//  Created by Nikolay Chaban on 3/29/17.
//  Copyright © 2017 Nikolay Chaban. All rights reserved.
//

#import "AsyncOperation.h"

static NSString* const kExecutingFlagSelector = @"isExecuting";
static NSString* const kFinishedFlagSelector  = @"isFinished";

@implementation AsyncOperation
{
    BOOL        executing;
    BOOL        finished;
}


#pragma mark - Initialization -

- (instancetype) init
{
    if ( self = [super init] )
    {
        executing = NO;
        finished  = NO;
    }
    
    return self;
}


#pragma mark - Getters -

- (BOOL) isAsynchronous
{
    return YES;
}

- (BOOL) isExecuting
{
    return executing;
}

- (BOOL) isFinished
{
    return finished;
}


#pragma mark - Internal methods -

- (void) start
{
    /**
     @author Nikolay Chaban
     
     Always check, if the operation was cancelled before the start
     */
    if ( [self isCancelled] )
    {
        /**
         @author Nikolay Chaban
         
         If it was cancelled, we are switching it to finished state
         */
        [self willChangeValueForKey: kFinishedFlagSelector];
        
        finished = YES;
        
        [self didChangeValueForKey: kFinishedFlagSelector];
        
        return;
    }
    
    /**
     @author Nikolay Chaban
     
     If it wasn't cancelled, we're beginning the task
     */
    [self willChangeValueForKey: kExecutingFlagSelector];
    
    [NSThread detachNewThreadSelector: @selector(main)
                             toTarget: self
                           withObject: nil];
    
    executing = YES;
    
    [self didChangeValueForKey: kExecutingFlagSelector];
}

- (void) main
{
    [NSException raise: NSInternalInconsistencyException
                format: @"You should override the method %@ in a subclass", NSStringFromSelector(_cmd)];
}

- (void) complete
{
    /**
     @author Nikolay Chaban
     
     We should always manually setup finished and executing flags after the operation is complete
     */
    [self willChangeValueForKey: kFinishedFlagSelector];
    [self willChangeValueForKey: kExecutingFlagSelector];
    
    executing = NO;
    finished  = YES;
    
    [self didChangeValueForKey: kExecutingFlagSelector];
    [self didChangeValueForKey: kFinishedFlagSelector];
}


@end
