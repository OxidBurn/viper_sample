//
//  OSUserInfoInteractor.m
//  ViperSampleProject
//
//  Created by Valeria Mozghova on 28/03/2017.
//  Copyright © 2017 OnSight. All rights reserved.
//

#import "OSUserInfoInteractor.h"

// Classes
#import "OSUserInfoInteractorOutput.h"
#import "UserInfoService.h"
#import "ROSPonsomizer.h"

@implementation OSUserInfoInteractor


#pragma mark - Methods OSUserInfoInteractorInput -

- (UserInfoPlainObject*) obtainUpdatedUserInfoWithUserName: (NSString*) username
{
    return [self.ponsomizer convertObject: [self.userInfoService obtainUserInfoMOWithUsername: username]];
}

@end
