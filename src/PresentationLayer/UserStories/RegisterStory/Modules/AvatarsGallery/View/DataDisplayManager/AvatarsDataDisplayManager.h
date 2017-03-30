//
//  AvatarsDataDisplayManager.h
//  ViperSampleProject
//
//  Created by Lera Mozgovaya on 3/30/17.
//  Copyright © 2017 Nikolay Chaban. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "AvatarsCellObjectBuilder.h"
#import "AvatarCellObject.h"

@protocol AvatarsDataDisplayManagerDelegate;

@interface AvatarsDataDisplayManager : NSObject

@property (nonatomic, strong) AvatarsCellObjectBuilder* cellObjectBuilder;

@property (nonatomic, weak) id<AvatarsDataDisplayManagerDelegate> delegate;

@property (nonatomic, copy) void(^dismiss)();

/**
 @author Egor Tolstoy
 
 Returns a data source object for UICollectionView
 
 @param collectionView UICollectionView
 
 @return Data source
 */
- (id<UICollectionViewDataSource>) dataSourceForCollectionView: (UICollectionView*) collectionView;

/**
 @author Egor Tolstoy
 
 Returns a delegate object for UICollectionView with events
 
 @param collectionView UICollectionView with events
 
 @return Delegate
 */
- (id<UICollectionViewDelegate>) delegateForCollectionView: (UICollectionView*) collectionView;

/**
 @author Egor Tolstoy
 
 Updates a collection view data source with events array
 
 @param avatars Avatars array
 */
- (void) updateDataSourceWithAvatars: (NSArray*) avatars;

@end

@protocol AvatarsDataDisplayManagerDelegate <NSObject>

- (void) didTapCellWithObject: (NSString*) object;

@end
