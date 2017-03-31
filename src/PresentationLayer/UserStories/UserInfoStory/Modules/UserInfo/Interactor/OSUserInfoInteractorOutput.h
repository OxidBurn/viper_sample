//
//  OSUserInfoInteractorOutput.h
//  ViperSampleProject
//
//  Created by Valeria Mozghova on 28/03/2017.
//  Copyright © 2017 OnSight. All rights reserved.
//

//Frameworks
@import Foundation;

@protocol OSUserInfoInteractorOutput <NSObject>


/**
 @author Nikolay Chaban
 
 Notification method when load avatar operation is complete with error or with success

 @param image avatar image from file
 @param error load operation error
 */
- (void) didLoadUserAvatar: (UIImage*) image
                 withError: (NSError*) error;

@end
