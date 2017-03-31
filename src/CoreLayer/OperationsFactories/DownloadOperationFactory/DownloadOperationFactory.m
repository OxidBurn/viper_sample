//
//  DownloadOperationFactory.m
//  ViperSampleProject
//
//  Created by Nikolay Chaban on 3/30/17.
//  Copyright © 2017 Nikolay Chaban. All rights reserved.
//

#import "DownloadOperationFactory.h"

// Classes
#import "DownloadOperationBuilder.h"
#import "FileLoaderModel.h"


@interface DownloadOperationFactory()

@property (strong, nonatomic) DownloadOperationBuilder* operationBuilder;

@end

@implementation DownloadOperationFactory


#pragma mark - Initialization -

- (instancetype) initWithBuilder: (DownloadOperationBuilder*) builder
{
    if ( self = [super init] )
    {
        self.operationBuilder = builder;
    }
    
    return self;
}


#pragma mark - Public methods -

- (CompoundOperationBase*) getDownloadOperationWithFileURL: (NSString*) fileURL
                                       withDestinationPath: (NSString*) destinationPath
{
    FileLoaderModel* fileModel = [[FileLoaderModel alloc] initWithFilePath: fileURL
                                                       withFileDestination: destinationPath];
    
    return [self.operationBuilder buildCompoundDownloadOperationWithData: fileModel];
}

@end
