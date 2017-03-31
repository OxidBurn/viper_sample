//
//  DownloadOperationBuilder.m
//  ViperSampleProject
//
//  Created by Nikolay Chaban on 3/30/17.
//  Copyright © 2017 Nikolay Chaban. All rights reserved.
//

#import "DownloadOperationBuilder.h"

// Classes
#import "DownloadAvatarOperation.h"
#import "ImageDownloader.h"
#import "ImageDownloaderImplementation.h"
#import "CompoundOperationBase.h"
#import "OperationBuffer.h"

@interface DownloadOperationBuilder()

// properties

@property (strong, nonatomic) NSMutableArray* operationsArray;

@end

@implementation DownloadOperationBuilder


#pragma mark - Initialization -

- (instancetype) init
{
    if ( self = [super init] )
    {
        self.operationsArray = [NSMutableArray array];
    }
    
    return self;
}


#pragma mark - Public methods -

- (CompoundOperationBase*) buildCompoundDownloadOperationWithData: (FileLoaderModel*) inputData
{
    [self buildDownloadImageOperation];
    
    CompoundOperationBase* compoundOperation = [self getNewCompoundOperation];
    
    [compoundOperation.queueInput setOperationQueueInputData: inputData];
    
    return compoundOperation;
}


#pragma mark - Internal methods -

- (void) buildDownloadImageOperation
{
    id<ImageDownloader> imgDownloader = [ImageDownloaderImplementation new];
    
    DownloadAvatarOperation* downloadAvatarOperaiton = [DownloadAvatarOperation operationWithImageDownloader: imgDownloader];
    
    [self.operationsArray addObject: downloadAvatarOperaiton];
}

- (CompoundOperationBase*) getNewCompoundOperation
{
    OperationBuffer* firstBuffer = [OperationBuffer buffer];
    OperationBuffer* lastBuffer  = [OperationBuffer buffer];
    
    CompoundOperationBase* compoundOperaton = [CompoundOperationBase new];
    
    compoundOperaton.maxConcurrentOperationsCount = 1;
    compoundOperaton.queueInput                   = firstBuffer;
    compoundOperaton.queueOutput                  = lastBuffer;
    
    for (NSOperation <ChainableOperation>* operation in self.operationsArray)
    {
        [compoundOperaton addOperation: operation];
        
        operation.delegate = compoundOperaton;
        operation.input    = firstBuffer;
        operation.output   = lastBuffer;
    }
    
    return compoundOperaton;
}

@end
