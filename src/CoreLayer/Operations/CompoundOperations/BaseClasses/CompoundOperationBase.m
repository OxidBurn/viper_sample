//
//  CompoundOperationBase.m
//  ViperSampleProject
//
//  Created by Nikolay Chaban on 3/30/17.
//  Copyright © 2017 Nikolay Chaban. All rights reserved.
//

#import "CompoundOperationBase.h"

static NSUInteger const DefaultMaxConcurrentOperationsCount = 3;
static NSString* const kOperationQueueName                  = @"com.onsight.viperexample.%@-%@.queue";


@interface CompoundOperationBase()

@property (strong, nonatomic) NSOperationQueue* operationQueue;

@end

@implementation CompoundOperationBase


#pragma mark - Initialization -

- (instancetype) init
{
    if ( self = [super init] )
    {
        [self initialize];
    }
    
    return self;
}

- (void) initialize
{
    self.operationQueue = [[NSOperationQueue alloc] init];
    
    self.operationQueue.name = [NSString stringWithFormat : kOperationQueueName, NSStringFromClass([self class]), [[NSUUID UUID] UUIDString]];
    
    self.operationQueue.maxConcurrentOperationCount = self.maxConcurrentOperationsCount > 0 ? : DefaultMaxConcurrentOperationsCount;
    
    [self.operationQueue setSuspended: YES];
}


#pragma mark - Operation methods -

- (void) main
{
    [self.operationQueue setSuspended: NO];
}

- (void) cancel
{
    [super cancel];
    
    [self.operationQueue setSuspended: YES];
    [self.operationQueue cancelAllOperations];
    
    [self completeOperationWithData: nil
                              error: nil];
}

- (void) addOperation: (NSOperation<ChainableOperation>*) operation
{
    [self.operationQueue addOperation: operation];
}


#pragma mark - ChainableOperation Delegate Methods -

- (void) didCompleteChainableOperationWithError: (NSError*) error
{
    id data = [self.queueOutput obtainOperationQueueOutputData];
    
    /**
     @author Nikolay Chaban
     
     We should finish the operation in two cases:
     - If an error occures,
     - When the queue is finished (queueOutput is not nil)
     */
    if (error || data)
    {
        [self completeOperationWithData: data
                                  error: error];
    }
}


#pragma mark - Internal methods -

- (void) completeOperationWithData: (id)       data
                             error: (NSError*) error
{
    [self.operationQueue setSuspended: YES];
    [self.operationQueue cancelAllOperations];
    [self complete];
    
    if (self.resultBlock)
    {
        self.resultBlock(data, error);
    }
}

@end
