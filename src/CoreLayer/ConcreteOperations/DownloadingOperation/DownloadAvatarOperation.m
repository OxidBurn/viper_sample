//
//  DownloadAvatarOperation.m
//  ViperSampleProject
//
//  Created by Nikolay Chaban on 3/29/17.
//  Copyright © 2017 Nikolay Chaban. All rights reserved.
//

#import "DownloadAvatarOperation.h"
#import <AFURLSessionManager.h>

@interface DownloadAvatarOperation()

// properties

@property (strong, nonatomic) NSURLRequest* downloadRequest;

@property (strong, nonatomic) NSURL* destinationURL;

@end

@implementation DownloadAvatarOperation

@synthesize delegate = _delegate;
@synthesize input    = _input;
@synthesize output   = _output;

#pragma mark - Initialization -

- (instancetype) initWithAvatarLink: (NSString*) link
                withDestinationPath: (NSString*) path
{
    if ( self = [super init] )
    {
        self.downloadRequest = [NSURLRequest requestWithURL: [NSURL URLWithString: link]];
        self.destinationURL  = [NSURL fileURLWithPath: path];
    }
    
    return self;
}


#pragma mark - Public methods -

+ (instancetype) operationWithAvatarLink: (NSString*) link
                     withDestinationPath: (NSString*) path
{
    return [[[self class] alloc] initWithAvatarLink: link
                                withDestinationPath: path];
}


#pragma mark - Operations methods -

- (void) main
{
    NSURLSessionConfiguration* sessionConfig = [NSURLSessionConfiguration defaultSessionConfiguration];
    
    AFURLSessionManager* sessionManager = [[AFURLSessionManager alloc] initWithSessionConfiguration: sessionConfig];
    
    @weakify(self);
    
    NSURLSessionDownloadTask* downloadTask = [sessionManager downloadTaskWithRequest: self.downloadRequest
                                                                            progress: ^(NSProgress * _Nonnull downloadProgress) {
                                                                                
                                                                                
                                                                                
                                                                            }
                                                                         destination: ^NSURL * _Nonnull(NSURL * _Nonnull targetPath, NSURLResponse * _Nonnull response) {
                                                                             
                                                                             return self.destinationURL;
                                                                         }
                                                                   completionHandler: ^(NSURLResponse * _Nonnull response, NSURL * _Nullable filePath, NSError * _Nullable error) {
                                                                       
                                                                       @strongify(self)
                                                                       
                                                                       [self completeOperationWithData: filePath
                                                                                                 error: error];
                                                                       
                                                                   }];
    
    [downloadTask resume];
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
