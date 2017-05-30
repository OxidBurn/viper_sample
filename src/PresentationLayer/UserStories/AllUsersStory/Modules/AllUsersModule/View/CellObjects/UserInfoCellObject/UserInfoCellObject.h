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
#import "ParentUserCellObject.h"

@interface UserInfoCellObject : ParentUserCellObject <NICellObject>


@end
