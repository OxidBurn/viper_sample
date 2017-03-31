//
//  FileLoaderModel.m
//  ViperSampleProject
//
//  Created by Nikolay Chaban on 3/30/17.
//  Copyright © 2017 Nikolay Chaban. All rights reserved.
//

#import "FileLoaderModel.h"


@interface FileLoaderModel()

// properties

@property (strong, nonatomic) NSURLRequest* fileURL;

@property (strong, nonatomic) NSURL* destinationURL;

@end

@implementation FileLoaderModel


#pragma mark - Initialization -

- (instancetype) initWithFilePath: (NSString*) filePath
              withFileDestination: (NSString*) destination
{
    if ( self = [super init] )
    {
        self.fileURL        = [NSURLRequest requestWithURL  : [NSURL URLWithString: filePath]];
        self.destinationURL = [NSURL fileURLWithPath : destination];
        
    }
    
    return self;
}

@end
