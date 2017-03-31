//
//  ParentUserCellObject.h
//  ViperSampleProject
//
//  Created by Lera Mozgovaya on 3/31/17.
//  Copyright © 2017 Nikolay Chaban. All rights reserved.
//


//Classes
#import "UserInfoPlainObject.h"

@interface ParentUserCellObject : NSObject 

@property (nonatomic, strong, readonly) UserInfoPlainObject* user;


/**
 @author Valeria Mozghova
 
 Method that inits cell object with user
 
 @param user - property from which cell will be filling
 @return UserInfoCellObject
 */
+ (instancetype) objectWithUser: (UserInfoPlainObject*) user;

@end
