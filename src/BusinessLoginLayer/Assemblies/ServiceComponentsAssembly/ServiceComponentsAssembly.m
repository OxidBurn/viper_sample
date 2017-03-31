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
#import "OperationShcedulerImplementation.h"
#import "OperationScheduler.h"
#import "DownloadOperationFactory.h"

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
    return [TyphoonDefinition withClass: [UserInfoServiceImplementation class]
                          configuration: ^(TyphoonDefinition *definition) {
                              
                              /**
                               @author Nikolay Chaban
                               
                               Inject download operation factory to the service
                               */
                              [definition injectProperty: @selector(downloadFactory)
                                                    with: [self.operationFactoriesAssembly downloadOperationFactory]];
                              /**
                               @author Nikolay Chaban
                               
                               Inject operation scheduler for managing operation queue
                               */
                              [definition injectProperty: @selector(operationScheduler)
                                                    with: [self operationScheduler]];
                              
                          }];
}


#pragma mark - Internal methods -

- (id<UserDataResponseParser>) responseParser
{
    return [TyphoonDefinition withClass: [UserDataResponseParserImplementation class]];
}

- (id<OperationScheduler>) operationScheduler
{
    return [TyphoonDefinition withClass: [OperationShcedulerImplementation class]];
}

@end
