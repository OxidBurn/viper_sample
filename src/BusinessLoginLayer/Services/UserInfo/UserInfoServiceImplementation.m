//
//  UserInfoServiceImplementation.m
//  ViperSampleProject
//
//  Created by Nikolay Chaban on 3/24/17.
//  Copyright © 2017 Nikolay Chaban. All rights reserved.
//

#import "UserInfoServiceImplementation.h"

// Frameworks
#import <MagicalRecord/MagicalRecord.h>

// Classes
#import "UserInfoModelObject.h"

@implementation UserInfoServiceImplementation


#pragma mark - Public methods -


- (void) saveOrUpdateUserInfoInDB: (UserInfoResponseObject*) info
                   withCompletion: (CompletionUpdateBlock)   completion
{
    [MagicalRecord saveWithBlock: ^(NSManagedObjectContext* localContext) {
        
        UserInfoModelObject* localPerson = [UserInfoModelObject MR_createEntityInContext: localContext];
        
        localPerson.fullName  = info.fullName;
        localPerson.email     = info.email;
        localPerson.imagePath = info.imagePath;
        localPerson.userID    = info.userID;
        localPerson.username  = info.username;
    }
                      completion: ^(BOOL contextDidSave, NSError * _Nullable error) {
        
                          if ( completion )
                              completion(contextDidSave);
                          
    }];
}

- (void) updateUserInfoInDB: (UserInfoPlainObject*)  info
             withCompletion: (CompletionUpdateBlock) completion
{
    [MagicalRecord saveWithBlock: ^(NSManagedObjectContext * _Nonnull localContext) {
        
        UserInfoModelObject* localPerson = [[self obtainUserInfoMOWithID: info.userID] MR_inContext: localContext];
        
        localPerson.username = info.username;
        localPerson.fullName = info.fullName;
        localPerson.email    = info.email;
        
    }
                      completion: ^(BOOL contextDidSave, NSError * _Nullable error) {
                          
                          if ( completion )
                              completion(contextDidSave);
                          
                      }];
}

/**
 @author Valeria Mozghova
 
 method for getting user from DB

 @param username parameter for searching in DB
 @return user managed object
 */

- (UserInfoModelObject*) obtainUserInfoMOWithUsername: (NSString*) username
{
    NSPredicate* predicate = [NSPredicate predicateWithFormat: @"username == %@", username];
    
    UserInfoModelObject* user  = [UserInfoModelObject MR_findFirstWithPredicate: predicate];
    
    return user;
}

@end
