//
//  AvatarsCellObjectBuilder.m
//  ViperSampleProject
//
//  Created by Lera Mozgovaya on 3/30/17.
//  Copyright © 2017 Nikolay Chaban. All rights reserved.
//

#import "AvatarsCellObjectBuilder.h"
#import "AvatarCellObject.h"

@implementation AvatarsCellObjectBuilder

- (NSArray*) buildCellObjectsWithAvatars: (NSArray*) avatars
{
    NSMutableArray* objects = [NSMutableArray new];
    
    [avatars enumerateObjectsUsingBlock: ^(NSString*  _Nonnull avatar, NSUInteger idx, BOOL * _Nonnull stop) {
        
        AvatarCellObject* object = [AvatarCellObject objectWithAvatar: avatar];
        
        [objects addObject: object];
    }];
    
    return objects.copy;
}

@end
