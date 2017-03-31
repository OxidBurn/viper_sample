//
//  OSAvatarsGalleryInteractorInput.h
//  ViperSampleProject
//
//  Created by Valeria Mozghova on 30/03/2017.
//  Copyright © 2017 OnSight. All rights reserved.
//

// Frameworks
@import Foundation;

@protocol OSAvatarsGalleryInteractorInput <NSObject>

/**
 @author Valeria Mozghova
 
 Method for getting avatar names
 
 @return array of avatar names
 */
- (NSArray*) obtainAvatarsArray;

@end
