//
//  OSAllUsersViewController.m
//  ViperSampleProject
//
//  Created by Valeria Mozghova on 29/03/2017.
//  Copyright © 2017 OnSight. All rights reserved.
//

#import "OSAllUsersViewController.h"

// Classes
#import "OSAllUsersViewOutput.h"

@interface OSAllUsersViewController()

// properties

@property (weak, nonatomic) IBOutlet UITableView* allUsersTableView;

// methods

@end
@implementation OSAllUsersViewController


#pragma mark - Life cycle methods -

- (void) viewDidLoad 
{
	[super viewDidLoad];

	[self.output didTriggerViewReadyEvent];
    
    [self.output setupView];
}


#pragma mark - Memory management -

- (void) didReceiveMemoryWarning 
{
    NSLog(@"didReceiveMemoryWarning");

    [super didReceiveMemoryWarning];
}



#pragma mark - Methods OSAllUsersViewInput -

- (void) setupInitialState 
{
	/**
	@author Valeria Mozghova
	
	In this method there is setup of the initial view parameter, 
	which depend from controller life cycle (creation of elements, animation, etc.)
	*/
}


/**
 @author Valeria Mozghova
 
 Method for filling view with array of users to display

 @param users - data to display
 */
- (void) setupViewStateWithUsersArray: (NSArray*) users
{
    self.allUsersTableView.dataSource = [self.dataDisplayManager dataSourceForTableView: self.allUsersTableView];
    
    self.allUsersTableView.delegate   = [self.dataDisplayManager delegateForTableView: self.allUsersTableView
                                                             withBaseDelegate: self.dataDisplayManager];
    
    [self.dataDisplayManager updateTableViewModelWithUsers: users];
}

@end
