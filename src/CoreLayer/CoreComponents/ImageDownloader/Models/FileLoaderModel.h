//
//  FileLoaderModel.h
//  ViperSampleProject
//
//  Created by Nikolay Chaban on 3/30/17.
//  Copyright © 2017 Nikolay Chaban. All rights reserved.
//

#import <Foundation/Foundation.h>


/**
 @author Nikolay Chaban
 
 Model class for download file operation input data
 */
@interface FileLoaderModel : NSObject

@property (strong, nonatomic, readonly) NSURLRequest* fileURL;

@property (strong, nonatomic, readonly) NSURL* destinationURL;


/**
 @author Nikolay Chaban
 
 Initialization file downloader operation input data model object with parameters

 @param filePath path to file on server
 @param destination local path to the success loaded file
 @return FileLoaderModel
 */
- (instancetype) initWithFilePath: (NSString*) filePath
              withFileDestination: (NSString*) destination;

@end
