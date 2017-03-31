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
#import "AvatarsDataDisplayManagerOutput.h"

@interface AvatarsDataDisplayManager : NSObject

@property (nonatomic, strong) AvatarsCellObjectBuilder* cellObjectBuilder;

@property (nonatomic, weak) id<AvatarsDataDisplayManagerOutput> output;

/**
 @author Valeria Mozghova
 
 Returns a data source object for UICollectionView
 
 @param collectionView UICollectionView
 
 @return Data source
 */
- (id<UICollectionViewDataSource>) dataSourceForCollectionView: (UICollectionView*) collectionView;

/**
 @author Valeria Mozghova
 
 Returns a delegate object for UICollectionView with events
 
 @param collectionView UICollectionView with events
 
 @return Delegate
 */
- (id<UICollectionViewDelegate>) delegateForCollectionView: (UICollectionView*) collectionView;

/**
 @author Valeria Mozghova
 
 Updates a collection view data source with avatars array
 
 @param avatars Avatars array
 */
- (void) updateDataSourceWithAvatars: (NSArray*) avatars;

@end

