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


@end

@implementation OSAvatarsGalleryViewController


#pragma mark - Life cycle methods -

- (void) viewDidLoad 
{
	[super viewDidLoad];

	[self.output didTriggerViewReadyEvent];
    
    [self.output setupView];
    
    __weak typeof(self) blockSelf = self;
    self.displayDataManager.dismiss = ^(){
        
        [blockSelf dismissViewControllerAnimated: YES
                                      completion: nil];
        
    };
    
}


#pragma mark - Memory management -

- (void) didReceiveMemoryWarning 
{
    NSLog(@"didReceiveMemoryWarning");

    [super didReceiveMemoryWarning];
}



#pragma mark - Methods OSAvatarsGalleryViewInput -

- (void) setupInitialStateWithAvatars: (NSArray*) avatarsArray
{
    self.displayDataManager.delegate = self;
    
   
    
    self.avatarsCollectionView.dataSource = [self.displayDataManager dataSourceForCollectionView: self.avatarsCollectionView];
    
    self.avatarsCollectionView.delegate = [self.displayDataManager delegateForCollectionView: self.avatarsCollectionView];
    
    [self.displayDataManager updateDataSourceWithAvatars: avatarsArray];
	/**
	@author Valeria Mozghova
	
	In this method there is setup of the initial view parameter, 
	which depend from controller life cycle (creation of elements, animation, etc.)
	*/
}

#pragma mark - Methods AvatarsDataDisplayManagerDelegate -

- (void) didTapCellWithObject: (NSString*) object
{
    [self.output didSelectAvatar: object];
    
    [self dismissViewControllerAnimated: YES
                             completion: nil];
}

@end
