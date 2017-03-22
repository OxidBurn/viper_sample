//
//  OSRegisterModuleViewController.h
//  ViperSampleProject
//
//  Created by Nikolay Chaban on 18/03/2017.
//  Copyright © 2017 OnSight. All rights reserved.
//

// Frameworks
@import UIKit;

// Classes
#import "OSRegisterModuleViewInput.h"

// Protocols
@protocol OSRegisterModuleViewOutput;

@interface OSRegisterModuleViewController : UIViewController <OSRegisterModuleViewInput>

@property (nonatomic, strong) id<OSRegisterModuleViewOutput> output;

@end
