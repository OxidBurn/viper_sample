//
//  StoryboardAssembly.h
//  ViperSampleProject
//
//  Created by Nikolay Chaban on 3/23/17.
//  Copyright © 2017 Nikolay Chaban. All rights reserved.
//

// Frameworks
#import <Typhoon/Typhoon.h>
#import <RamblerInitialAssembly.h>

@interface StoryboardAssembly : TyphoonAssembly <RamblerInitialAssembly>

- (UIStoryboard*) mainStoryboard;

@end
