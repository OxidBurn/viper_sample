//
//  AlertsFactory.h
//  ViperSampleProject
//
//  Created by Nikolay Chaban on 3/24/17.
//  Copyright © 2017 Nikolay Chaban. All rights reserved.
//

// Classes
@class UIAlertController;
@class UIViewController;

///-------------------------------------------------
/// @name Alert action type for detectin callback action
///-------------------------------------------------
typedef NS_ENUM(NSUInteger, AlertActionType)
{
    ConfirmAlertActionType,
    CancelAlertActionType,
};

///-------------------------------------------------
/// @name Alert action call back block
///-------------------------------------------------
typedef void(^AlertCompletionBlock)(AlertActionType actionType);

/**
 @author Nikolay Chaban
 
 Factory designed for setuping and presenting alerts from View layer
 */
@interface AlertsFactory : NSObject

/**
 @author Nikolay Chaban
 
 Method designed for initialized and presenting alert controller on view layer(controller) 
 with needed title and message

 @param title alert title string value
 @param message message inside alert string value
 @param controller controller which will present alert controller
 @param completion completion block, if need to get callback from action
 */
+ (void) showAlertControllerWithTitle: (NSString*)            title
                          withMessage: (NSString*)            message
              presentedFromController: (UIViewController*)    controller
                       withCompletion: (AlertCompletionBlock) completion;


/**
 @author Nikolay Chaban
 
 Method designed for presenting simple inform alert with one confirm button

 @param title alert title string value
 @param message message inside alert string value
 @param source controller which will present alert controller
 */
+ (void) showInformAlertControllerWithTitle: (NSString*)         title
                                withMessage: (NSString*)         message
                             fromController: (UIViewController*) source;

@end
