//
//  LoginModuleViewInput.h
//  ViperSampleProject
//
//  Created by Nikolay Chaban on 22/12/2016.
//  Copyright © 2016 OnSight. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol LoginModuleViewInput <NSObject>

/**
 @author Nikolay Chaban

 Метод настраивает начальный стейт view
 */
- (void)setupInitialState;

@end
