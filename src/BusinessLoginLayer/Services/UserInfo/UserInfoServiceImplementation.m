//
//  UserInfoServiceImplementation.m
//  ViperSampleProject
//
//  Created by Nikolay Chaban on 3/24/17.
//  Copyright © 2017 Nikolay Chaban. All rights reserved.
//

#import "UserInfoServiceImplementation.h"
#import "UserInfoModelObject.h"

@implementation UserInfoServiceImplementation


#pragma mark - Public methods -

- (void) saveOrUpdateUserInfoInDB: (UserInfoResponseObject*) info
                   withCompletion: (CompletionUpdateBlock)   completion
{
    [MagicalRecord saveWithBlock:^(NSManagedObjectContext *localContext) {
        
        UserInfoModelObject *localPerson = [UserInfoModelObject MR_createEntityInContext: localContext];;
        localPerson.fullName  = info.fullName;
        localPerson.email     = info.email;
        localPerson.imagePath = info.imagePath;
        localPerson.userID    = info.userID;
    }];
    
    NSLog(@"Object for storing to database %@", info);
    
    if ( completion )
        completion(YES);
}

- (UserInfoModelObject*) getUserInfoMOWithID: (NSNumber*) userID
{
    NSPredicate* predicate = [NSPredicate predicateWithFormat: @"userID == %@", userID];
    
    UserInfoModelObject* user  = [UserInfoModelObject MR_findFirstWithPredicate: predicate];
    
    return user;
}

@end
