//
//  OSAllUsersInteractor.m
//  ViperSampleProject
//
//  Created by Valeria Mozghova on 29/03/2017.
//  Copyright © 2017 OnSight. All rights reserved.
//

#import "OSAllUsersInteractor.h"

// Classes
#import "OSAllUsersInteractorOutput.h"

//Protocols
#import "UserInfoService.h"
#import "ROSPonsomizer.h"

@implementation OSAllUsersInteractor


#pragma mark - Methods OSAllUsersInteractorInput -

/**
 @author Valeria Mozghova
 
 method for converting user objects from database to plain objects

 @return array of plain user objects
 */
- (NSArray*) obtainListOfUsers
{
    NSArray* registeredMOUsers = [self.userInfoService obtainAllRegisteredUsers];
    
    NSArray* registeredPlainUsers = [self.ponsomizer convertObject: registeredMOUsers];
    
    return registeredPlainUsers;
}

@end
