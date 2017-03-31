//
//  AvatarsDataDisplayManager.m
//  ViperSampleProject
//
//  Created by Lera Mozgovaya on 3/30/17.
//  Copyright © 2017 Nikolay Chaban. All rights reserved.
//

#import "AvatarsDataDisplayManager.h"

// Frameworks
#import <Nimbus/NimbusCollections.h>

//Classes
#import "AvatarCellObject.h"

@interface AvatarsDataDisplayManager() <UICollectionViewDelegate>

// properties
@property (nonatomic, strong) NIMutableCollectionViewModel* collectionModel;
@property (nonatomic, strong) NICollectionViewActions* collectionActions;

// methods

@end

@implementation AvatarsDataDisplayManager


#pragma mark - Public -

- (id<UICollectionViewDataSource>) dataSourceForCollectionView: (UICollectionView*) collectionView
{
    self.collectionModel = [[NIMutableCollectionViewModel alloc] initWithSectionedArray: @[@""]
                                                                               delegate: (id)[NICollectionViewCellFactory class]];
    
    return self.collectionModel;
}


- (id<UICollectionViewDelegate>) delegateForCollectionView: (UICollectionView*) collectionView
{
    if (!self.collectionActions)
    {
        [self setupCollectionActions];
    }
    
    return self;
}

- (void) updateDataSourceWithAvatars: (NSArray*) avatars
{
    NSArray* cellObjects = [self.cellObjectBuilder buildCellObjectsWithAvatars: avatars];
    
    [self.collectionModel addObjectsFromArray: cellObjects];
}

- (void) setupCollectionActions
{
    self.collectionActions = [[NICollectionViewActions alloc] initWithTarget: self];
    
    @weakify(self);
    
    NIActionBlock avatarTapActionBlock = ^BOOL(AvatarCellObject* object, id target, NSIndexPath* indexPath) {
        
        @strongify(self);
        
        [self.delegate didTapCellWithObject: object.avatar];
        
        return YES;
    };
    
    [self.collectionActions attachToClass: [AvatarCellObject class]
                                 tapBlock: avatarTapActionBlock];

}

#pragma mark - <UICollectionViewDelegate>

- (void)  collectionView: (UICollectionView*) collectionView
didSelectItemAtIndexPath: (NSIndexPath*)      indexPath
{
    return [self.collectionActions collectionView: collectionView
                         didSelectItemAtIndexPath: indexPath];
   
}

@end
