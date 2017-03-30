//
//  OSAvatarsGalleryViewController.h
//  ViperSampleProject
//
//  Created by Valeria Mozghova on 30/03/2017.
//  Copyright © 2017 OnSight. All rights reserved.
//

// Frameworks
@import UIKit;

// Classes
#import "OSAvatarsGalleryViewInput.h"
#import "AvatarsDataDisplayManager.h"

// Protocols
@protocol OSAvatarsGalleryViewOutput;

@interface OSAvatarsGalleryViewController : UIViewController <OSAvatarsGalleryViewInput>

@property (nonatomic, strong) AvatarsDataDisplayManager* displayDataManager;

@property (nonatomic, strong) id<OSAvatarsGalleryViewOutput> output;

@end
