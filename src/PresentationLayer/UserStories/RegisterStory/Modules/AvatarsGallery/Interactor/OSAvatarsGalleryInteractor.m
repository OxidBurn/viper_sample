//
//  OSAvatarsGalleryInteractor.m
//  ViperSampleProject
//
//  Created by Valeria Mozghova on 30/03/2017.
//  Copyright © 2017 OnSight. All rights reserved.
//

#import "OSAvatarsGalleryInteractor.h"

// Classes
#import "OSAvatarsGalleryInteractorOutput.h"

@implementation OSAvatarsGalleryInteractor


#pragma mark - Methods OSAvatarsGalleryInteractorInput -

- (NSArray*) obtainAvatarsArray
{
    NSArray* avatarNames = @[@"avatar_bear",
                             @"avatar_ferret",
                             @"avatar_fox",
                             @"avatar_lion",
                             @"avatar_panda",
                             @"avatar_raccoon"];
    
    return avatarNames;
}

@end
