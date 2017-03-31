//
//  DownloadAvatarOperation.h
//  ViperSampleProject
//
//  Created by Nikolay Chaban on 3/29/17.
//  Copyright © 2017 Nikolay Chaban. All rights reserved.
//

// Classes
#import "AsyncOperation.h"
#import "ChainableOperation.h"

// Protocol
@protocol ImageDownloader;

/**
 @author Nikolay Chaban
 
 Class designed for loading avatar images from internet by link
 */
@interface DownloadAvatarOperation : AsyncOperation <ChainableOperation>

+ (instancetype) operationWithImageDownloader: (id<ImageDownloader>) downloader;

@end
