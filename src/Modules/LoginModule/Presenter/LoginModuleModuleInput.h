//
//  LoginModuleModuleInput.h
//  ViperSampleProject
//
//  Created by Nikolay Chaban on 22/12/2016.
//  Copyright © 2016 OnSight. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <ViperMcFlurry/ViperMcFlurry.h>

@protocol LoginModuleModuleInput <RamblerViperModuleInput>

/**
 @author Nikolay Chaban

 Метод инициирует стартовую конфигурацию текущего модуля
 */
- (void)configureModule;

@end
