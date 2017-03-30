//
//  OSAllUsersViewController.h
//  ViperSampleProject
//
//  Created by Valeria Mozghova on 29/03/2017.
//  Copyright © 2017 OnSight. All rights reserved.
//

// Frameworks
@import UIKit;

// Classes
#import "OSAllUsersViewInput.h"
#import "AllUsersDataDisplayManager.h"

// Protocols
@protocol OSAllUsersViewOutput;

@interface OSAllUsersViewController : UIViewController <OSAllUsersViewInput>

@property (nonatomic, strong) id<OSAllUsersViewOutput> output;

@property (nonatomic, strong) AllUsersDataDisplayManager* dataDisplayManager;

@end
