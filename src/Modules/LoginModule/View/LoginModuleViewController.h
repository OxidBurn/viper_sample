//
//  LoginModuleViewController.h
//  ViperSampleProject
//
//  Created by Nikolay Chaban on 22/12/2016.
//  Copyright © 2016 OnSight. All rights reserved.
//

#import <UIKit/UIKit.h>

#import "LoginModuleViewInput.h"

@protocol LoginModuleViewOutput;

@interface LoginModuleViewController : UIViewController <LoginModuleViewInput>

@property (nonatomic, strong) id<LoginModuleViewOutput> output;

@end
