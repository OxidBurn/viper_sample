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

@protocol AllUsersDataDisplayManagerDelegate;

@interface AllUsersDataDisplayManager : NSObject <DataDisplayManager, UITableViewDelegate>

@property (nonatomic, strong) UsersCellObjectBuilder* cellObjectBuilder;

@property (nonatomic, weak) id<AllUsersDataDisplayManagerDelegate> delegate;

- (void) updateTableViewModelWithUsers: (NSArray*) users;

@end

@protocol AllUsersDataDisplayManagerDelegate <NSObject>

- (void) didTapCellWithUser: (UserInfoPlainObject*) user;

@end
