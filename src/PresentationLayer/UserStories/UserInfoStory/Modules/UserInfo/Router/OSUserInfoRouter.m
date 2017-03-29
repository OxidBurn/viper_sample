//
//  OSUserInfoRouter.m
//  ViperSampleProject
//
//  Created by Valeria Mozghova on 28/03/2017.
//  Copyright © 2017 OnSight. All rights reserved.
//

#import "OSUserInfoRouter.h"

// Frameworks
#import <ViperMcFlurry/ViperMcFlurry.h>

// Classes
#import "UserInfoModuleSegueIdentifiersConstance.h"
#import "OSUserUpdateInfoModuleOutput.h"
#import "OSUserUpdateInfoModuleInput.h"

@implementation OSUserInfoRouter


#pragma mark - Methods OSUserInfoRouterInput -

- (void) configureUpdateUserInfoModuleWithInfo: (UserInfoPlainObject*)             info
                              withModuleOutput: (id<OSUserUpdateInfoModuleOutput>) moduleOutput
{
    [[self.transitionHandler openModuleUsingSegue: updateUserInfoSubModuleSegueID] thenChainUsingBlock: ^id<OSUserUpdateInfoModuleOutput>(id<OSUserUpdateInfoModuleInput> moduleInput) {
       
        [moduleInput configureModuleWithUser: info];
        
        return moduleOutput;
        
    }];
}

@end
