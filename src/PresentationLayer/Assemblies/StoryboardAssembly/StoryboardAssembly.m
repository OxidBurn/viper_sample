//
//  StoryboardAssembly.m
//  ViperSampleProject
//
//  Created by Nikolay Chaban on 3/23/17.
//  Copyright © 2017 Nikolay Chaban. All rights reserved.
//

#import "StoryboardAssembly.h"

// Storyboard names constants
static NSString* const kMainStoryboardName = @"Main";

@implementation StoryboardAssembly

- (UIStoryboard*) mainStoryboard
{
    return [TyphoonDefinition withClass: [TyphoonStoryboard class]
                          configuration: ^(TyphoonDefinition *definition) {
                              
                              [definition useInitializer: @selector(storyboardWithName:factory:bundle:)
                                              parameters: ^(TyphoonMethod* initializer) {
                                                  
                                                  [initializer injectParameterWith: kMainStoryboardName];
                                                  [initializer injectParameterWith: self];
                                                  [initializer injectParameterWith: [NSBundle mainBundle]];
                                                  
                                              }];
                              
                          }];
}

@end
