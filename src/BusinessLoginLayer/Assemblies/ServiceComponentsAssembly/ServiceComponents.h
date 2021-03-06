//
//  ServiceComponents.h
//  ViperSampleProject
//
//  Created by Nikolay Chaban on 3/23/17.
//  Copyright © 2017 Nikolay Chaban. All rights reserved.
//

// Frameworks
@import Foundation;

// Protocols
@protocol LoginService;
@protocol RegisterService;
@protocol UserInfoService;

/**
 @author Nikolay Chaban
 
 Protocol for setuping all services
 */

@protocol ServiceComponents <NSObject>

// required methods
@required

- (id<LoginService>) loginService;

- (id<RegisterService>) registerService;

- (id<UserInfoService>) userInfoService;

@end
