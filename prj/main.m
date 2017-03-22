//
//  main.m
//  ViperSampleProject
//
//  Created by Nikolay Chaban on 12/22/16.
//  Copyright © 2016 Nikolay Chaban. All rights reserved.
//

// Frameworks
#import <UIKit/UIKit.h>
#import <RamblerAppDelegateProxy.h>

// Classes
#import "InitialAppDelegate.h"
#import "ActivityAppDelegate.h"
#import "TyphoonAppDelegate.h"

int main(int argc, char * argv[]) {
    @autoreleasepool {
        
        /**
         @author Nikolay Chaban
         
         App delegates dependency injection
         */
        [[RamblerAppDelegateProxy injector] addAppDelegates: @[[InitialAppDelegate new],
                                                               [ActivityAppDelegate new]]];
        
        [[RamblerAppDelegateProxy injector] setDefaultAppDelegate: [TyphoonAppDelegate new]];
        
        return UIApplicationMain(argc, argv, nil, NSStringFromClass([RamblerAppDelegateProxy class]));
    }
}
