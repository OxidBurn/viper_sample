//
//  ImageDownloaderImplementation.m
//  ViperSampleProject
//
//  Created by Nikolay Chaban on 3/30/17.
//  Copyright © 2017 Nikolay Chaban. All rights reserved.
//

#import "ImageDownloaderImplementation.h"

// Frameworks
#import <AFURLSessionManager.h>

// Class
#import "FileLoaderModel.h"


@implementation ImageDownloaderImplementation


#pragma mark - Downloader Protocol methods -

- (void) downloadImageWithInfo: (FileLoaderModel*)               info
                withCompletion: (ImageDownloaderCompletionBlock) completion
{
    /**
     @author Nikolay Chaban
     
     Check if input operation model is nil, fire assert exception
     */
    NSAssert((info != nil), @"File info shouldn't be nil");
    
    NSURLSessionConfiguration* sessionConfig = [NSURLSessionConfiguration defaultSessionConfiguration];
    
    AFURLSessionManager* sessionManager = [[AFURLSessionManager alloc] initWithSessionConfiguration: sessionConfig];
    
    [[sessionManager downloadTaskWithRequest: info.fileURL
                                    progress: ^(NSProgress * _Nonnull downloadProgress) {}
                                 destination: ^NSURL * _Nonnull(NSURL * _Nonnull targetPath, NSURLResponse * _Nonnull response) {
                                    
                                    return info.destinationURL;
                                 }
                           completionHandler: ^(NSURLResponse * _Nonnull response, NSURL * _Nullable filePath, NSError * _Nullable error) {
                              
                              if ( completion )
                                  completion(filePath, error);
                              
                           }] resume];
}

@end
