//
//  UserInfoResponseInfoObject.h
//  ViperSampleProject
//
//  Created by Nikolay Chaban on 3/24/17.
//  Copyright © 2017 Nikolay Chaban. All rights reserved.
//

#import <Foundation/Foundation.h>


/**
 @author Nikolay Chaban
 
 PONSO object for parsing server resnponse and 
 store all user info in one object
 */
@interface UserInfoResponseObject : NSObject


/**
 @author Nikolay Chaban
 
 Full user name, structure is: Surname Name
 */
@property (strong, nonatomic) NSString* fullName;


/**
 @author Nikolay Chaban
 
 User email address wich he used for loging
 */
@property (strong, nonatomic) NSString* email;


/**
 @author Nikolay Chaban
 
 Path to the local image
 */
@property (strong, nonatomic) NSString* imagePath;


/**
 @author Nikolay Chaban
 
 Url to the image on server
 */
@property (strong, nonatomic) NSString* imageURL;


/**
 @author Nikolay Chaban
 
 User name value, which user used for logging to the service
 */
@property (strong, nonatomic) NSString* username;

/**
 @author Valeria Mozghova
 
user id
 */
@property (strong, nonatomic) NSNumber* userID;



@end
