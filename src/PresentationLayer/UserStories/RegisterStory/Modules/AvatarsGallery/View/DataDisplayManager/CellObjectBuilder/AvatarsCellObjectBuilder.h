//
//  AvatarsCellObjectBuilder.h
//  ViperSampleProject
//
//  Created by Lera Mozgovaya on 3/30/17.
//  Copyright © 2017 Nikolay Chaban. All rights reserved.
//

@interface AvatarsCellObjectBuilder : NSObject

/**
 @author Valeria Mozghova
 
 Method which converts avatar names to AvatarCellObjects (view models of cells)

 @param avatars - set of avatars for filling collection
 @return array of AvatarCellObjects for filling cells
 */
- (NSArray*) buildCellObjectsWithAvatars: (NSArray*) avatars;

@end
