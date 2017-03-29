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

- (UserInfoPlainObject*) obtainUpdatedUserInfoWithID: (NSNumber*) userID
{
    return [self.ponsomizer convertObject: [self.userInfoService obtainUserInfoMOWithID: userID]];
}

@end
