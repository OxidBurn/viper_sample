//
//  OSLoginModuleViewController.h
//  ViperSampleProject
//
//  Created by Nikolay Chaban on 18/03/2017.
//  Copyright © 2017 OnSight. All rights reserved.
//

// Frameworks
@import UIKit;

// Classes
#import "OSLoginModuleViewInput.h"

// Protocols
@protocol OSLoginModuleViewOutput;

@interface OSLoginModuleViewController : UIViewController <OSLoginModuleViewInput>

@property (nonatomic, strong) id<OSLoginModuleViewOutput> output;

@end
