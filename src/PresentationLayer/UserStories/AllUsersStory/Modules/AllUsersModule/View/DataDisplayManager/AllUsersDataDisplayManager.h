//
//  AllUsersDataDisplayManager.h
//  ViperSampleProject
//
//  Created by Lera Mozgovaya on 3/29/17.
//  Copyright © 2017 Nikolay Chaban. All rights reserved.
//

//Frameworks
#import <Nimbus/NimbusModels.h>

//Classes
@class UsersCellObjectBuilder;
@class UserInfoPlainObject;

//Protocols
#import "DataDisplayManager.h"
@protocol AllUserDataDisplayManagerOutput;

@interface AllUsersDataDisplayManager : NSObject <DataDisplayManager, UITableViewDelegate>

@property (nonatomic, strong) UsersCellObjectBuilder* cellObjectBuilder;

@property (nonatomic, weak) id<AllUserDataDisplayManagerOutput> output;

- (void) updateTableViewModelWithUsers: (NSArray*) users;

@end
