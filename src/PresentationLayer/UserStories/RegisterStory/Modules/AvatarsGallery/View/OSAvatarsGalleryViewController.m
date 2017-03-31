//
//  OSAvatarsGalleryViewController.m
//  ViperSampleProject
//
//  Created by Valeria Mozghova on 30/03/2017.
//  Copyright © 2017 OnSight. All rights reserved.
//

#import "OSAvatarsGalleryViewController.h"

// Classes
#import "OSAvatarsGalleryViewOutput.h"
#import "AvatarsDataDisplayManager.h"

@interface OSAvatarsGalleryViewController() <AvatarsDataDisplayManagerDelegate>

// properties
@property (weak, nonatomic) IBOutlet UICollectionView* avatarsCollectionView;

// methods

- (IBAction) onDismiss: (UIButton*) sender;

@end

@implementation OSAvatarsGalleryViewController


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


#pragma mark - Methods OSAvatarsGalleryViewInput -

/**
 @author Valeria Mozghova

 In this method there is setup of the initial view with list of avatars
 
 @param avatarsArray list of avatars for displaying in collection
 */
- (void) setupInitialStateWithAvatars: (NSArray*) avatarsArray
{
    self.displayDataManager.delegate = self;
    
    self.avatarsCollectionView.dataSource = [self.displayDataManager dataSourceForCollectionView: self.avatarsCollectionView];
    
    self.avatarsCollectionView.delegate = [self.displayDataManager delegateForCollectionView: self.avatarsCollectionView];
    
    [self.displayDataManager updateDataSourceWithAvatars: avatarsArray];
}


#pragma mark - Methods AvatarsDataDisplayManagerDelegate -


/**
 @author Valeria Mozghova
 
 Method that informs that avatar was selected

 @param object - selected avatar
 */
- (void) didTapCellWithObject: (NSString*) object
{
    [self.output didSelectAvatar: object];
    
    [self dismissViewControllerAnimated: YES
                             completion: nil];
}


- (IBAction) onDismiss: (UIButton*) sender
{
    [self dismissViewControllerAnimated: YES
                             completion: nil];
}
@end
