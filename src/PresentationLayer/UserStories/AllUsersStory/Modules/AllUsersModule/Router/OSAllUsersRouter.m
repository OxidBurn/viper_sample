//
//  OSAllUsersRouter.m
//  ViperSampleProject
//
//  Created by Valeria Mozghova on 29/03/2017.
//  Copyright © 2017 OnSight. All rights reserved.
//

#import "OSAllUsersRouter.h"

// Frameworks
#import <ViperMcFlurry/ViperMcFlurry.h>

// Classes
#import "UserInfoPlainObject.h"

//Protocold
#import "OSUserInfoModuleInput.h"

@implementation OSAllUsersRouter


#pragma mark - Methods OSAllUsersRouterInput -

- (void) openUserInfoModuleWithUser: (UserInfoPlainObject*) user
{
    [[self.transitionHandler openModuleUsingSegue: @"ShowSingleUser"] thenChainUsingBlock: ^id<RamblerViperModuleOutput> (id<OSUserInfoModuleInput> moduleInput) {
        
        [moduleInput configureModuleWithUser: user];
        
        return nil;
    }];
}

@end
