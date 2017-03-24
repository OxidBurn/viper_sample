//
//  UserInfoService.h
//  ViperSampleProject
//
//  Created by Nikolay Chaban on 3/24/17.
//  Copyright © 2017 Nikolay Chaban. All rights reserved.
//

// Frameworks
@import Foundation;

// Classes
#import "UserInfoResponseObject.h"

///-------------------------------------------------
/// @name Completion block definition
///-------------------------------------------------
typedef void(^CompletionUpdateBlock)(BOOL isUpdate);

/**
 @author Nikolay Chaban
 
 Protocol defined for performance save/update user info to DB and obtain user info from DB
 */

@protocol UserInfoService <NSObject>

// required methods
@required


/**
 @author Nikolay Chaban
 
 Method for storing or update user information into database

 @param info plain object with user info from server
 @param completion completion block with success save parameter
 */
- (void) saveOrUpdateUserInfoInDB: (UserInfoResponseObject*) info
                   withCompletion: (CompletionUpdateBlock)   completion;


@end
