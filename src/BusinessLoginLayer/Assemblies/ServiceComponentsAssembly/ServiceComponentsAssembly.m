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
#import "RegisterServiceImplementation.h"
#import "UserDataResponseParserImplementation.h"
#import "UserInfoServiceImplementation.h"

@implementation ServiceComponentsAssembly


#pragma mark - Login service -

- (id<LoginService>) loginService
{
    return [TyphoonDefinition withClass: [LoginServiceImplementation class]
                          configuration: ^(TyphoonDefinition* definition) {
        
                              [definition injectProperty: @selector(responseParser)
                                                    with: [self responseParser]];
                              
    }];
}

- (id<RegisterService>) registerService
{
    return [TyphoonDefinition withClass: [RegisterServiceImplementation class]];
}

- (id<UserInfoService>) userInfoService
{
    return [TyphoonDefinition withClass: [UserInfoServiceImplementation class]];
}


#pragma mark - Internal methods -

- (id<UserDataResponseParser>) responseParser
{
    return [TyphoonDefinition withClass: [UserDataResponseParserImplementation class]];
}

@end
