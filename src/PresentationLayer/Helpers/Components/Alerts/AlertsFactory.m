//
//  AlertsFactory.m
//  ViperSampleProject
//
//  Created by Nikolay Chaban on 3/24/17.
//  Copyright © 2017 Nikolay Chaban. All rights reserved.
//

#import "AlertsFactory.h"

@implementation AlertsFactory


#pragma mark - Public methods -

+ (void) showAlertControllerWithTitle: (NSString*)            title
                          withMessage: (NSString*)            message
              presentedFromController: (UIViewController*)    controller
                       withCompletion: (AlertCompletionBlock) completion
{
    UIAlertController* alertController = [AlertsFactory createAlertControllerWithTitle: title
                                                                           withMessage: message];
    
    UIAlertAction* closeAction = [UIAlertAction actionWithTitle: @"Confirm"
                                                          style: UIAlertActionStyleDefault
                                                        handler: ^(UIAlertAction * _Nonnull action) {
                                                        
                                                            if ( completion )
                                                                completion(ConfirmAlertActionType);
                                                            
                                                        }];
    
    UIAlertAction* cancelAction = [UIAlertAction actionWithTitle: @"Cancel"
                                                           style: UIAlertActionStyleDefault
                                                         handler: ^(UIAlertAction * _Nonnull action) {
                                                            
                                                            if ( completion )
                                                                completion(CancelAlertActionType);
                                                            
                                                        }];
    
    [alertController addAction: closeAction];
    [alertController addAction: cancelAction];
    
    [controller presentViewController: alertController
                             animated: YES
                           completion: nil];
}

+ (void) showInformAlertControllerWithTitle: (NSString*)         title
                                withMessage: (NSString*)         message
                             fromController: (UIViewController*) source
{
    UIAlertController* alertController = [AlertsFactory createAlertControllerWithTitle: title
                                                                           withMessage: message];
    
    UIAlertAction* closeAction = [UIAlertAction actionWithTitle: @"Confirm"
                                                          style: UIAlertActionStyleDefault
                                                        handler: nil];
    
    [alertController addAction: closeAction];
    
    [source presentViewController: alertController
                         animated: YES
                       completion: nil];
}


#pragma mark - Internal methods -

+ (UIAlertController*) createAlertControllerWithTitle: (NSString*) title
                                          withMessage: (NSString*) message
{
    UIAlertController* alertController = [UIAlertController alertControllerWithTitle: title
                                                                             message: message
                                                                      preferredStyle: UIAlertControllerStyleAlert];
    
    return alertController;
}

@end
