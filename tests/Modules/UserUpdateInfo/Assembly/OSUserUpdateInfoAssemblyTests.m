//
//  OSUserUpdateInfoAssemblyTests.m
//  ViperSampleProject
//
//  Created by Nikolay Chaban on 29/03/2017.
//  Copyright © 2017 OnSight. All rights reserved.
//

// Frameworks
#import <RamblerTyphoonUtils/AssemblyTesting.h>
#import <Typhoon/Typhoon.h>

// Classes
#import "OSUserUpdateInfoAssembly.h"
#import "OSUserUpdateInfoAssembly_Testable.h"

#import "OSUserUpdateInfoViewController.h"
#import "OSUserUpdateInfoPresenter.h"
#import "OSUserUpdateInfoInteractor.h"
#import "OSUserUpdateInfoRouter.h"

@interface OSUserUpdateInfoAssemblyTests : RamblerTyphoonAssemblyTests

@property (nonatomic, strong) OSUserUpdateInfoAssembly* assembly;

@end

@implementation OSUserUpdateInfoAssemblyTests


#pragma mark - Setup environment for testing - 

- (void) setUp 
{
    [super setUp];

    self.assembly = [[OSUserUpdateInfoAssembly alloc] init];
    
//    [self.assembly activate];
}

- (void)tearDown {
    self.assembly = nil;

    [super tearDown];
}

#pragma mark - Testing for the creation of the module elements -

- (void) testThatAssemblyCreatesViewController 
{
    // given
    Class targetClass = [OSUserUpdateInfoViewController class];
    NSArray* protocols = @[
                           @protocol(OSUserUpdateInfoViewInput)
                           ];
                           
    NSArray* dependencies = @[
                              RamblerSelector(output)
                              ];
    RamblerTyphoonAssemblyTestsTypeDescriptor* descriptor = [RamblerTyphoonAssemblyTestsTypeDescriptor descriptorWithClass: targetClass
                                                                                                              andProtocols: protocols];

    // when
    id result = [self.assembly viewUserUpdateInfo];

    // then
    [self verifyTargetDependency: result
                  withDescriptor: descriptor
                    dependencies: dependencies];
}

- (void) testThatAssemblyCreatesPresenter 
{
    // given
    Class targetClass = [OSUserUpdateInfoPresenter class];
    NSArray* protocols = @[
                           @protocol(OSUserUpdateInfoModuleInput),
                           @protocol(OSUserUpdateInfoViewOutput),
                           @protocol(OSUserUpdateInfoInteractorOutput)
                           ];
                           
    NSArray* dependencies = @[
                              RamblerSelector(interactor),
                              RamblerSelector(view),
                              RamblerSelector(router)
                              ];
                              
    RamblerTyphoonAssemblyTestsTypeDescriptor* descriptor = [RamblerTyphoonAssemblyTestsTypeDescriptor descriptorWithClass: targetClass
                                                                                                              andProtocols: protocols];

    // when
    id result = [self.assembly presenterUserUpdateInfo];

    // then
    [self verifyTargetDependency: result
                  withDescriptor: descriptor
                    dependencies: dependencies];
}

- (void) testThatAssemblyCreatesInteractor 
{
    // given
    Class targetClass = [OSUserUpdateInfoInteractor class];
    
    NSArray* protocols = @[
                           @protocol(OSUserUpdateInfoInteractorInput)
                           ];
                           
    NSArray* dependencies = @[
                              RamblerSelector(output)
                              ];
                              
    RamblerTyphoonAssemblyTestsTypeDescriptor* descriptor = [RamblerTyphoonAssemblyTestsTypeDescriptor descriptorWithClass: targetClass
                                                                                                              andProtocols: protocols];
													      
    // when
    id result = [self.assembly interactorUserUpdateInfo];

    // then
    [self verifyTargetDependency: result
                  withDescriptor: descriptor
                    dependencies: dependencies];
}

- (void) testThatAssemblyCreatesRouter 
{
    // given
    Class targetClass = [OSUserUpdateInfoRouter class];
    
    NSArray* protocols = @[
                           @protocol(OSUserUpdateInfoRouterInput)
                           ];
                           
    NSArray* dependencies = @[
                              RamblerSelector(transitionHandler)
                              ];
                              
    RamblerTyphoonAssemblyTestsTypeDescriptor* descriptor = [RamblerTyphoonAssemblyTestsTypeDescriptor descriptorWithClass: targetClass
                                                                                                              andProtocols: protocols];

    // when
    id result = [self.assembly routerUserUpdateInfo];

    // then
    [self verifyTargetDependency: result
                  withDescriptor: descriptor
                    dependencies: dependencies];
}

@end
