//
//  DownloadOperationBuilder.h
//  ViperSampleProject
//
//  Created by Nikolay Chaban on 3/30/17.
//  Copyright © 2017 Nikolay Chaban. All rights reserved.
//

// Classes
@class CompoundOperationBase;
@class FileLoaderModel;

/**
 @author Nikolay Chaban
 
 Class for building downloaded operations
 */
@interface DownloadOperationBuilder : NSObject

- (CompoundOperationBase*) buildCompoundDownloadOperationWithData: (FileLoaderModel*) inputData;

@end
