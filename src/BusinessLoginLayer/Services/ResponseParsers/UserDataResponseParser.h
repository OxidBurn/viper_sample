//
//  LoginResponseParser.h
//  ViperSampleProject
//
//  Created by Nikolay Chaban on 3/24/17.
//  Copyright © 2017 Nikolay Chaban. All rights reserved.
//

// Frameworks
@import Foundation;

/**
 @author Nikolay Chaban
 
 Protocol for converting server response dictionary to plain object
 */

@protocol UserDataResponseParser <NSObject>

// required methods
@required


/**
 @author Nikolay Chaban
 
 Method designed for converting dictionary to the plain object

 @param response dictionary with response data
 @return UserInfoResponseInfoObject mapped plain object with response info
 */
- (id) mapLoginResponse: (NSDictionary*) response;


@end
