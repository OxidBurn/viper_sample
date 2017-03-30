//
//  AvatarCellObject.h
//  ViperSampleProject
//
//  Created by Lera Mozgovaya on 3/30/17.
//  Copyright © 2017 Nikolay Chaban. All rights reserved.
//

// Frameworks
#import <Nimbus/NimbusCollections.h>

@interface AvatarCellObject : NSObject <NICollectionViewNibCellObject>

// properties
@property (nonatomic, strong) UIImage* avatar;

// methods
+ (instancetype) objectWithAvatar: (UIImage*) avatar;

@end
