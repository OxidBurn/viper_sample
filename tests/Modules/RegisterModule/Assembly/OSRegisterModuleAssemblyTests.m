//
//  OSRegisterModuleAssemblyTests.m
//  ViperSampleProject
//
//  Created by Nikolay Chaban on 23/03/2017.
//  Copyright © 2017 OnSight. All rights reserved.
//

// Frameworks
#import <RamblerTyphoonUtils/AssemblyTesting.h>
#import <Typhoon/Typhoon.h>

// Classes
#import "OSRegisterModuleAssembly.h"
#import "OSRegisterModuleAssembly_Testable.h"

#import "OSRegisterModuleViewController.h"
#import "OSRegisterModulePresenter.h"
#import "OSRegisterModuleInteractor.h"
#import "OSRegisterModuleRouter.h"

@interface OSRegisterModuleAssemblyTests : RamblerTyphoonAssemblyTests

@property (nonatomic, strong) OSRegisterModuleAssembly* assembly;

@end

@implementation OSRegisterModuleAssemblyTests


#pragma mark - Setup environment for testing - 

- (void) setUp 
{
    [super setUp];

    self.assembly = [[OSRegisterModuleAssembly alloc] init];
    
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
    Class targetClass = [OSRegisterModuleViewController class];
    NSArray* protocols = @[
                           @protocol(OSRegisterModuleViewInput)
                           ];
                           
    NSArray* dependencies = @[
                              RamblerSelector(output)
                              ];
    RamblerTyphoonAssemblyTestsTypeDescriptor* descriptor = [RamblerTyphoonAssemblyTestsTypeDescriptor descriptorWithClass: targetClass
                                                                                                              andProtocols: protocols];

    // when
    id result = [self.assembly viewRegisterModule];

    // then
    [self verifyTargetDependency: result
                  withDescriptor: descriptor
                    dependencies: dependencies];
}

- (void) testThatAssemblyCreatesPresenter 
{
    // given
    Class targetClass = [OSRegisterModulePresenter class];
    NSArray* protocols = @[
                           @protocol(OSRegisterModuleModuleInput),
                           @protocol(OSRegisterModuleViewOutput),
                           @protocol(OSRegisterModuleInteractorOutput)
                           ];
                           
    NSArray* dependencies = @[
                              RamblerSelector(interactor),
                              RamblerSelector(view),
                              RamblerSelector(router)
                              ];
                              
    RamblerTyphoonAssemblyTestsTypeDescriptor* descriptor = [RamblerTyphoonAssemblyTestsTypeDescriptor descriptorWithClass: targetClass
                                                                                                              andProtocols: protocols];

    // when
    id result = [self.assembly presenterRegisterModule];

    // then
    [self verifyTargetDependency: result
                  withDescriptor: descriptor
                    dependencies: dependencies];
}

- (void) testThatAssemblyCreatesInteractor 
{
    // given
    Class targetClass = [OSRegisterModuleInteractor class];
    
    NSArray* protocols = @[
                           @protocol(OSRegisterModuleInteractorInput)
                           ];
                           
    NSArray* dependencies = @[
                              RamblerSelector(output)
                              ];
                              
    RamblerTyphoonAssemblyTestsTypeDescriptor* descriptor = [RamblerTyphoonAssemblyTestsTypeDescriptor descriptorWithClass: targetClass
                                                                                                              andProtocols: protocols];
													      
    // when
    id result = [self.assembly interactorRegisterModule];

    // then
    [self verifyTargetDependency: result
                  withDescriptor: descriptor
                    dependencies: dependencies];
}

- (void) testThatAssemblyCreatesRouter 
{
    // given
    Class targetClass = [OSRegisterModuleRouter class];
    
    NSArray* protocols = @[
                           @protocol(OSRegisterModuleRouterInput)
                           ];
                           
    NSArray* dependencies = @[
                              RamblerSelector(transitionHandler)
                              ];
                              
    RamblerTyphoonAssemblyTestsTypeDescriptor* descriptor = [RamblerTyphoonAssemblyTestsTypeDescriptor descriptorWithClass: targetClass
                                                                                                              andProtocols: protocols];

    // when
    id result = [self.assembly routerRegisterModule];

    // then
    [self verifyTargetDependency: result
                  withDescriptor: descriptor
                    dependencies: dependencies];
}

@end
