//
//  InitialAppDelegate.m
//  ViperSampleProject
//
//  Created by Nikolay Chaban on 3/17/17.
//  Copyright © 2017 Nikolay Chaban. All rights reserved.
//

#import "InitialAppDelegate.h"

// Frameworks
#import <RamblerTyphoonUtils/AssemblyCollector.h>

// Classes
#import "LoginModuleAssembly.h"

@implementation InitialAppDelegate

- (BOOL)           application: (UIApplication*) application
 didFinishLaunchingWithOptions: (NSDictionary*)  launchOptions
{
    // Override point for customization after application launch.
    return YES;
}


#pragma mark - Assembly initialization -

- (NSArray*) initialAssemblies
{
    RamblerInitialAssemblyCollector* collector = [RamblerInitialAssemblyCollector new];
    
    return [collector collectInitialAssemblyClasses];
}

@end
