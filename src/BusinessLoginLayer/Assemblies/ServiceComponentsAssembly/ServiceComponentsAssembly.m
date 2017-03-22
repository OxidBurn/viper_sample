//
//  ServiceComponentsAssembly.m
//  ViperSampleProject
//
//  Created by Nikolay Chaban on 3/23/17.
//  Copyright © 2017 Nikolay Chaban. All rights reserved.
//

#import "ServiceComponentsAssembly.h"

// Classes
#import "LoginServiceImplementation.h"

@implementation ServiceComponentsAssembly


#pragma mark - Login service -

- (id<LoginService>) loginService
{
    return [TyphoonDefinition withClass: [LoginServiceImplementation class]];
}

@end
