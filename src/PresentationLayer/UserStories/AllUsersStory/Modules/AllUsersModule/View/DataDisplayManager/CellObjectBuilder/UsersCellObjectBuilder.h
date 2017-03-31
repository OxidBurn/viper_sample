//
//  UsersCellObjectBuilder.h
//  ViperSampleProject
//
//  Created by Lera Mozgovaya on 3/29/17.
//  Copyright © 2017 Nikolay Chaban. All rights reserved.
//
//  Class used for building cell objects
//


#import <Foundation/Foundation.h>

@interface UsersCellObjectBuilder : NSObject

/**
 @author Valeria Mozghova
 
 Method that collects cell objects
 
 @param users - array of users which information will be displayed
 @return array of cell objects (view models of cell)
 */
- (NSArray*) buildCellObjectsWithUsers: (NSArray*) users;

@end
