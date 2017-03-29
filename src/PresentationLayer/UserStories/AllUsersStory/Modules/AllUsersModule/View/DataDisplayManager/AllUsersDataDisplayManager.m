//
//  AllUsersDataDisplayManager.m
//  ViperSampleProject
//
//  Created by Lera Mozgovaya on 3/29/17.
//  Copyright © 2017 Nikolay Chaban. All rights reserved.
//

#import "AllUsersDataDisplayManager.h"

//Frameworks
#import <Nimbus/NimbusModels.h>

//Classes
#import "UserInfoCellObject.h"
#import "UsersCellObjectBuilder.h"
#import "UserInfoPlainObject.h"

@interface AllUsersDataDisplayManager()

// properties

/**
 @author Valeria Mozghova
 
 tableViewModel - class which is dataSource of tableView
 tableViewActions - class which is delegate of tableView
 
 classes from NimbusKit
 */
@property (nonatomic, strong) NIMutableTableViewModel* tableViewModel;
@property (nonatomic, strong) NITableViewActions* tableViewActions;

// methods

@end

@implementation AllUsersDataDisplayManager


#pragma mark - Public -

/**
 @author Valeria Mozghova
 
 Method for returning dataSource of tableView
 
 @param tableView - tableView that displays information
 @return dataSource of tableView
 */
- (id<UITableViewDataSource>) dataSourceForTableView: (UITableView*) tableView
{
    if (self.tableViewModel == nil)
    {
        self.tableViewModel = [[NIMutableTableViewModel alloc] initWithSectionedArray:@[@""]
                                                                             delegate:(id)[NICellFactory class]];
    }
    return self.tableViewModel;
}

/**
 @author Valeria Mozghova
 
 Method for returning dataSource of tableView
 
 @param tableView - tableView that displays information
 @param baseTableViewDelegate - base delegate
 @return dataSource of tableView
 */
- (id<UITableViewDelegate>) delegateForTableView: (UITableView*) tableView
                                withBaseDelegate: (id<UITableViewDelegate>) baseTableViewDelegate
{
    if (!self.tableViewActions)
    {
        [self setupTableViewActions];
    }
    return [self.tableViewActions forwardingTo: baseTableViewDelegate];
}


/**
 @author Valeria Mozghova
 
 Method for updating table view model, which is datasource of tableview with information

 @param users array of users to display
 */
- (void) updateTableViewModelWithUsers: (NSArray*) users
{
    [self updateTableViewModel: users];
}

#pragma mark - Internal -

- (void) updateTableViewModel: (NSArray*) users
{
    NSArray *cellObjects = [self.cellObjectBuilder buildCellObjectsWithUsers: users];
    
    [self.tableViewModel addObjectsFromArray: cellObjects];
}

- (void) setupTableViewActions
{
   // обработка метода делагата ддм и все такое
}

@end
