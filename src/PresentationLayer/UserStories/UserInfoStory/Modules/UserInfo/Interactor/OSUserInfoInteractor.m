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

- (void) obtainAvatarForUser: (UserInfoPlainObject*) user
{
    [self.userInfoService loadAvatarForUser: user
                        withCompletionBlock: ^(NSURL* filePath, NSError *error) {
                            
                            NSData* imageData = [NSData dataWithContentsOfURL: filePath];
                            UIImage* avatar   = [UIImage imageWithData: imageData];
                            
                            [self.output didLoadUserAvatar: avatar
                                                 withError: error];
                            
                        }];
}

@end
