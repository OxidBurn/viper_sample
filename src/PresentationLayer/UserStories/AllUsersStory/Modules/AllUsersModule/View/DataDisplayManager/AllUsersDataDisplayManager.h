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

//Protocols
#import "DataDisplayManager.h"

@interface AllUsersDataDisplayManager : NSObject <DataDisplayManager, UITableViewDelegate>

@property (nonatomic, strong) UsersCellObjectBuilder* cellObjectBuilder;

- (void) updateTableViewModelWithUsers: (NSArray*) users;

@end
