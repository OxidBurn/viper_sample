//
//  OSUserInfoViewController.h
//  ViperSampleProject
//
//  Created by Valeria Mozghova on 28/03/2017.
//  Copyright © 2017 OnSight. All rights reserved.
//

// Frameworks
@import UIKit;

// Classes
#import "OSUserInfoViewInput.h"

// Protocols
@protocol OSUserInfoViewOutput;

@interface OSUserInfoViewController : UIViewController <OSUserInfoViewInput>

@property (nonatomic, strong) id<OSUserInfoViewOutput> output;

@end
