//
//  OSUserUpdateInfoInteractor.m
//  ViperSampleProject
//
//  Created by Nikolay Chaban on 29/03/2017.
//  Copyright © 2017 OnSight. All rights reserved.
//

#import "OSUserUpdateInfoInteractor.h"

// Classes
#import "OSUserUpdateInfoInteractorOutput.h"

@implementation OSUserUpdateInfoInteractor


#pragma mark - Methods OSUserUpdateInfoInteractorInput -

- (void) updateUserInfoInDB: (UserInfoPlainObject*) userInfo
{
    @weakify(self)
    
    [self.userInfoService updateUserInfoInDB: userInfo
                              withCompletion: ^(BOOL isUpdate) {
                  
                                  @strongify(self)
                                  
                                  [self.output didUpdateUserInfoInDB];
                                  
                              }];
}

@end
