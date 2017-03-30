//
//  OSUserUpdateInfoViewController.h
//  ViperSampleProject
//
//  Created by Nikolay Chaban on 29/03/2017.
//  Copyright © 2017 OnSight. All rights reserved.
//

// Frameworks
@import UIKit;

// Classes
#import "OSUserUpdateInfoViewInput.h"

// Protocols
@protocol OSUserUpdateInfoViewOutput;

@interface OSUserUpdateInfoViewController : UIViewController <OSUserUpdateInfoViewInput>

@property (nonatomic, strong) id<OSUserUpdateInfoViewOutput> output;

@end
