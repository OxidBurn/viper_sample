//
//  main.m
//  ViperSampleProject
//
//  Created by Nikolay Chaban on 12/22/16.
//  Copyright © 2016 Nikolay Chaban. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "InitialAppDelegate.h"
#import "ActivityAppDelegate.h"
#import <RamblerAppDelegateProxy.h>

int main(int argc, char * argv[]) {
    @autoreleasepool {
        
        /**
         @author Nikolay Chaban
         
         App delegates dependency injection
         */
        [[RamblerAppDelegateProxy injector] addAppDelegates: @[[InitialAppDelegate new],
                                                               [ActivityAppDelegate new]]];
        
        return UIApplicationMain(argc, argv, nil, NSStringFromClass([RamblerAppDelegateProxy class]));
    }
}
