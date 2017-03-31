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

/**
 @author Nikolay Chaban
 
 Build method for creating and setuping donwload operation object

 @param inputData operation input model
 @return download avatar operation
 */
- (CompoundOperationBase*) buildCompoundDownloadOperationWithData: (FileLoaderModel*) inputData;

@end
