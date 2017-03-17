//
//  LoginModuleInteractor.h
//  ViperSampleProject
//
//  Created by Nikolay Chaban on 22/12/2016.
//  Copyright © 2016 OnSight. All rights reserved.
//

#import "LoginModuleInteractorInput.h"

@protocol LoginModuleInteractorOutput;

@interface LoginModuleInteractor : NSObject <LoginModuleInteractorInput>

@property (nonatomic, weak) id<LoginModuleInteractorOutput> output;

@end
