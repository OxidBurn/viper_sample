//
//  OperationsFactoryAssebmly.m
//  ViperSampleProject
//
//  Created by Nikolay Chaban on 3/30/17.
//  Copyright © 2017 Nikolay Chaban. All rights reserved.
//

#import "OperationsFactoryAssebmly.h"

// Classes
#import "DownloadOperationBuilder.h"

@implementation OperationsFactoryAssebmly


#pragma mark - Public -

- (DownloadOperationFactory*) downloadOperationFactory
{
    return [TyphoonDefinition withClass: [DownloadOperationFactory class]
                          configuration: ^(TyphoonDefinition *definition) {
                              
                              [definition useInitializer: @selector(initWithBuilder:)
                                              parameters: ^(TyphoonMethod *initializer) {
                                                  
                                                  [initializer injectParameterWith: [self downloadOperationBuilder]];
                                                  
                                              }];
                              
                          }];
}


#pragma mark - Internal methods -

- (DownloadOperationBuilder*) downloadOperationBuilder
{
    return [TyphoonDefinition withClass: [DownloadOperationBuilder class]];
}

@end
