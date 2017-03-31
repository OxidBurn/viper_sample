//
//  DownloadOperationFactory.h
//  ViperSampleProject
//
//  Created by Nikolay Chaban on 3/30/17.
//  Copyright © 2017 Nikolay Chaban. All rights reserved.
//

// Classes
@class CompoundOperationBase;
@class DownloadOperationBuilder;

@interface DownloadOperationFactory : NSObject


/**
 @author Nikolay Chaban
 
 Initialize factory with operation builider

 @param builder download operation builder
 @return DownloadOperationFactory
 */
- (instancetype) initWithBuilder: (DownloadOperationBuilder*) builder;

/**
 @author Nikolay Chaban
 
 Factory method return compound downloaded operations

 @param fileURL url sting to the file on server
 @param destinationPath path where file should loaded in local store
 @return compound downloaded object
 */
- (CompoundOperationBase*) getDownloadOperationWithFileURL: (NSString*) fileURL
                                       withDestinationPath: (NSString*) destinationPath;

@end
