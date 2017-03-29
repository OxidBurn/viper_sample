//
//  OSUserUpdateInfoModuleAssemblyTests.m
//  ViperSampleProject
//
//  Created by Nikolay Chaban on 29/03/2017.
//  Copyright © 2017 OnSight. All rights reserved.
//

// Frameworks
#import <RamblerTyphoonUtils/AssemblyTesting.h>
#import <Typhoon/Typhoon.h>

// Classes
#import "OSUserUpdateInfoModuleAssembly.h"
#import "OSUserUpdateInfoModuleAssembly_Testable.h"

#import "OSUserUpdateInfoModuleViewController.h"
#import "OSUserUpdateInfoModulePresenter.h"
#import "OSUserUpdateInfoModuleInteractor.h"
#import "OSUserUpdateInfoModuleRouter.h"

@interface OSUserUpdateInfoModuleAssemblyTests : RamblerTyphoonAssemblyTests

@property (nonatomic, strong) OSUserUpdateInfoModuleAssembly* assembly;

@end

@implementation OSUserUpdateInfoModuleAssemblyTests


#pragma mark - Setup environment for testing - 

- (void) setUp 
{
    [super setUp];

    self.assembly = [[OSUserUpdateInfoModuleAssembly alloc] init];
    
    [self.assembly activate];
}

- (void)tearDown {
    self.assembly = nil;

    [super tearDown];
}

#pragma mark - Testing for the creation of the module elements -

- (void) testThatAssemblyCreatesViewController 
{
    // given
    Class targetClass = [OSUserUpdateInfoModuleViewController class];
    NSArray* protocols = @[
                           @protocol(OSUserUpdateInfoModuleViewInput)
                           ];
                           
    NSArray* dependencies = @[
                              RamblerSelector(output)
                              ];
    RamblerTyphoonAssemblyTestsTypeDescriptor* descriptor = [RamblerTyphoonAssemblyTestsTypeDescriptor descriptorWithClass: targetClass
                                                                                                              andProtocols: protocols];

    // when
    id result = [self.assembly viewUserUpdateInfoModule];

    // then
    [self verifyTargetDependency: result
                  withDescriptor: descriptor
                    dependencies: dependencies];
}

- (void) testThatAssemblyCreatesPresenter 
{
    // given
    Class targetClass = [OSUserUpdateInfoModulePresenter class];
    NSArray* protocols = @[
                           @protocol(OSUserUpdateInfoModuleModuleInput),
                           @protocol(OSUserUpdateInfoModuleViewOutput),
                           @protocol(OSUserUpdateInfoModuleInteractorOutput)
                           ];
                           
    NSArray* dependencies = @[
                              RamblerSelector(interactor),
                              RamblerSelector(view),
                              RamblerSelector(router)
                              ];
                              
    RamblerTyphoonAssemblyTestsTypeDescriptor* descriptor = [RamblerTyphoonAssemblyTestsTypeDescriptor descriptorWithClass: targetClass
                                                                                                              andProtocols: protocols];

    // when
    id result = [self.assembly presenterUserUpdateInfoModule];

    // then
    [self verifyTargetDependency: result
                  withDescriptor: descriptor
                    dependencies: dependencies];
}

- (void) testThatAssemblyCreatesInteractor 
{
    // given
    Class targetClass = [OSUserUpdateInfoModuleInteractor class];
    
    NSArray* protocols = @[
                           @protocol(OSUserUpdateInfoModuleInteractorInput)
                           ];
                           
    NSArray* dependencies = @[
                              RamblerSelector(output)
                              ];
                              
    RamblerTyphoonAssemblyTestsTypeDescriptor* descriptor = [RamblerTyphoonAssemblyTestsTypeDescriptor descriptorWithClass: targetClass
                                                                                                              andProtocols: protocols];
													      
    // when
    id result = [self.assembly interactorUserUpdateInfoModule];

    // then
    [self verifyTargetDependency: result
                  withDescriptor: descriptor
                    dependencies: dependencies];
}

- (void) testThatAssemblyCreatesRouter 
{
    // given
    Class targetClass = [OSUserUpdateInfoModuleRouter class];
    
    NSArray* protocols = @[
                           @protocol(OSUserUpdateInfoModuleRouterInput)
                           ];
                           
    NSArray* dependencies = @[
                              RamblerSelector(transitionHandler)
                              ];
                              
    RamblerTyphoonAssemblyTestsTypeDescriptor* descriptor = [RamblerTyphoonAssemblyTestsTypeDescriptor descriptorWithClass: targetClass
                                                                                                              andProtocols: protocols];

    // when
    id result = [self.assembly routerUserUpdateInfoModule];

    // then
    [self verifyTargetDependency: result
                  withDescriptor: descriptor
                    dependencies: dependencies];
}

@end
