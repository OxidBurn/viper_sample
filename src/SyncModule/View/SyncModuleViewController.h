//
//  SyncModuleViewController.h
//  ViperSampleProject
//
//  Created by Nikolay Chaban on 22/12/2016.
//  Copyright © 2016 OnSight. All rights reserved.
//

#import <UIKit/UIKit.h>

#import "SyncModuleViewInput.h"

@protocol SyncModuleViewOutput;

@interface SyncModuleViewController : UIViewController <SyncModuleViewInput>

@property (nonatomic, strong) id<SyncModuleViewOutput> output;

@end
