//
//  UserInfoCellObject.h
//  ViperSampleProject
//
//  Created by Lera Mozgovaya on 3/29/17.
//  Copyright © 2017 Nikolay Chaban. All rights reserved.
//
//
//  ViewModel of cell.
//  Contains data for displaying
//  Brige between cell and model
//


//Frameworks
#import <Nimbus/NimbusModels.h>

//Classes
#import "UserInfoPlainObject.h"

@interface UserInfoCellObject : NSObject <NICellObject>

@property (nonatomic, strong, readonly) UserInfoPlainObject* user;


/**
 @author Valeria Mozghova

 Method that inits cell object with user
 
 @param user - property from which cell will be filling
 @return UserInfoCellObject
 */
+ (instancetype) objectWithUser: (UserInfoPlainObject*) user;

@end
