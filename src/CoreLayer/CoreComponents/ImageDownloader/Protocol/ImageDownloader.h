//
//  ImageDownloader.h
//  ViperSampleProject
//
//  Created by Nikolay Chaban on 3/30/17.
//  Copyright © 2017 Nikolay Chaban. All rights reserved.
//

// Frameworks
@import Foundation;

// Classes
@class FileLoaderModel;

///-------------------------------------------------
/// @name Completion operation block
///-------------------------------------------------
typedef void(^ImageDownloaderCompletionBlock)(NSURL* imagePath, NSError* error);

/**
 @author Nikolay Chaban
 
 Image operation loader protocol
 */

@protocol ImageDownloader <NSObject>

// required methods
@required


/**
 @author Nikolay Chaban
 
 Download image with using AFNetworking framework

 @param info load file path on server and destination local path
 @param completion completion block with destination image path and error if exist
 */
- (void) downloadImageWithInfo: (FileLoaderModel*)               info
                withCompletion: (ImageDownloaderCompletionBlock) completion;

@end
