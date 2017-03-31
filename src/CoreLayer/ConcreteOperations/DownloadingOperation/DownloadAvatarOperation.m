//
//  DownloadAvatarOperation.m
//  ViperSampleProject
//
//  Created by Nikolay Chaban on 3/29/17.
//  Copyright © 2017 Nikolay Chaban. All rights reserved.
//

#import "DownloadAvatarOperation.h"

// Classes
#import "ImageDownloaderImplementation.h"
#import "FileLoaderModel.h"

@interface DownloadAvatarOperation()

// properties

@property (strong, nonatomic) id<ImageDownloader> imageDownloader;

@end

@implementation DownloadAvatarOperation

@synthesize delegate = _delegate;
@synthesize input    = _input;
@synthesize output   = _output;

#pragma mark - Initialization -

- (instancetype) initWithImageDownloader: (id<ImageDownloader>) downloader
{
    if ( self = [super init] )
    {
        self.imageDownloader = downloader;
    }
    
    return self;
}


#pragma mark - Public methods -

+ (instancetype) operationWithImageDownloader: (id<ImageDownloader>) downloader
{
    return [[[self class] alloc] initWithImageDownloader: downloader];
}


#pragma mark - Operations methods -

- (void) main
{
    // Fetch data from buffer
    FileLoaderModel* loaderModel = [self.input obtainInputDataWithTypeValidationBlock: ^BOOL(id data) {
        
        if ( data )
        {
            return YES;
        }
        
        return NO;
    }];
    
    @weakify(self)
    // Start loading avatar from server
    [self.imageDownloader downloadImageWithInfo: loaderModel
                                 withCompletion: ^(NSURL* imagePath, NSError* error) {
                                     
                                     @strongify(self)
                                     
                                     [self completeOperationWithData: imagePath
                                                               error: error];
                                     
                                 }];
}

- (void) completeOperationWithData: (id)       data
                             error: (NSError*) error
{
    if ( data )
    {
        [self.output didCompleteChainableOperationWithOutputData: data];
    }
    
    [self.delegate didCompleteChainableOperationWithError: error];
    
    [self complete];
}

@end
