//
//  OperationShcedulerImplementation.m
//  ViperSampleProject
//
//  Created by Nikolay Chaban on 3/29/17.
//  Copyright © 2017 Nikolay Chaban. All rights reserved.
//

#import "OperationShcedulerImplementation.h"

static NSString *const kOperationQueueName = @"com.onsight.ViperExample.OperationQueue";

@interface OperationShcedulerImplementation()

// properties

@property (strong, nonatomic) NSOperationQueue* operationQueue;

@end

@implementation OperationShcedulerImplementation


#pragma mark - Initialization -

- (instancetype) init
{
    if ( self = [super init] )
    {
        self.operationQueue = [[NSOperationQueue alloc] init];
        
        self.operationQueue.name                        = kOperationQueueName;
        self.operationQueue.maxConcurrentOperationCount = NSOperationQueueDefaultMaxConcurrentOperationCount;
    }
    
    return self;
}


#pragma mark - Method OperationScheduler Protocol -

- (void) addOperation: (NSOperation*) operation
{
    [self.operationQueue addOperation: operation];
}

@end
