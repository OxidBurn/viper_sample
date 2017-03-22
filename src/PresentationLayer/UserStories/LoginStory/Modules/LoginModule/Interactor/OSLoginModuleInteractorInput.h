//
//  OSLoginModuleInteractorInput.h
//  ViperSampleProject
//
//  Created by Nikolay Chaban on 18/03/2017.
//  Copyright © 2017 OnSight. All rights reserved.
//

// Frameworks
@import Foundation;

@protocol OSLoginModuleInteractorInput <NSObject>


/**
 @author Nikolay Chaban
 
 Processing login request to the server

 @param name string name parameter
 @param password string password parameter
 */
- (void) loginUserToServerWithName: (NSString*) name
                      withPassword: (NSString*) password;

@end
