//
//  LoginModuleViewOutput.h
//  ViperSampleProject
//
//  Created by Nikolay Chaban on 22/12/2016.
//  Copyright © 2016 OnSight. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol LoginModuleViewOutput <NSObject>

/**
 @author Nikolay Chaban

 Метод сообщает презентеру о том, что view готова к работе
 */
- (void)didTriggerViewReadyEvent;

@end
