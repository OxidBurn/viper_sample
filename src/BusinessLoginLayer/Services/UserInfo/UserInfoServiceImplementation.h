//
//  UserInfoServiceImplementation.h
//  ViperSampleProject
//
//  Created by Nikolay Chaban on 3/24/17.
//  Copyright © 2017 Nikolay Chaban. All rights reserved.
//

// Classes
@class DownloadOperationFactory;

// Protocols
#import "UserInfoService.h"
@protocol OperationScheduler;

@interface UserInfoServiceImplementation : NSObject <UserInfoService>

@property (strong, nonatomic) DownloadOperationFactory* downloadFactory;
@property (strong, nonatomic) id<OperationScheduler> operationScheduler;

@end
