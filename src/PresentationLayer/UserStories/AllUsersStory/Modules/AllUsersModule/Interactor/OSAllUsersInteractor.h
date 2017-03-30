//
//  OSAllUsersInteractor.h
//  ViperSampleProject
//
//  Created by Valeria Mozghova on 29/03/2017.
//  Copyright © 2017 OnSight. All rights reserved.
//

// Classes
#import "OSAllUsersInteractorInput.h"

// Protocols
@protocol OSAllUsersInteractorOutput;
@protocol UserInfoService;
@protocol ROSPonsomizer;

@interface OSAllUsersInteractor : NSObject <OSAllUsersInteractorInput>

@property (nonatomic, weak) id<OSAllUsersInteractorOutput> output;
@property (strong, nonatomic) id<UserInfoService> userInfoService;
@property (nonatomic, strong) id <ROSPonsomizer> ponsomizer;

@end
