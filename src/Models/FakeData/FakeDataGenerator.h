//
//  FakeDataGenerator.h
//  ViperSampleProject
//
//  Created by Nikolay Chaban on 3/24/17.
//  Copyright © 2017 Nikolay Chaban. All rights reserved.
//


/**
 @author Nikolay Chaban
 
 Class designed for generating fake login response dictionary
 Used just for tests
 */
@interface FakeDataGenerator : NSObject

/**
 @author Nikolay Chaban
 
 Method for generation fake login request resopnse dictionary with user info

 @param value Logged user email
 @return fake response dictionary with user info
 */
+ (NSDictionary*) generateFakeLoginResponseWithLogin: (NSString*) value;

@end
