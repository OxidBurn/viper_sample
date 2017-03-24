//
//  UserInfoServiceImplementation.m
//  ViperSampleProject
//
//  Created by Nikolay Chaban on 3/24/17.
//  Copyright © 2017 Nikolay Chaban. All rights reserved.
//

#import "UserInfoServiceImplementation.h"

@implementation UserInfoServiceImplementation


#pragma mark - Public methods -

- (void) saveOrUpdateUserInfoInDB: (UserInfoResponseObject*) info
                   withCompletion: (CompletionUpdateBlock)   completion
{
    NSLog(@"Object for storing to database %@", info);
    
    if ( completion )
        completion(YES);
}

@end
