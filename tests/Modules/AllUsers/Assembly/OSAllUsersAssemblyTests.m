//
//  OSAllUsersAssemblyTests.m
//  ViperSampleProject
//
//  Created by Valeria Mozghova on 29/03/2017.
//  Copyright © 2017 OnSight. All rights reserved.
//

// Frameworks
#import <RamblerTyphoonUtils/AssemblyTesting.h>
#import <Typhoon/Typhoon.h>

// Classes
#import "OSAllUsersAssembly.h"
#import "OSAllUsersAssembly_Testable.h"

#import "OSAllUsersViewController.h"
#import "OSAllUsersPresenter.h"
#import "OSAllUsersInteractor.h"
#import "OSAllUsersRouter.h"

@interface OSAllUsersAssemblyTests : RamblerTyphoonAssemblyTests

@property (nonatomic, strong) OSAllUsersAssembly* assembly;

@end

@implementation OSAllUsersAssemblyTests


#pragma mark - Setup environment for testing - 

- (void) setUp 
{
    [super setUp];

    self.assembly = [[OSAllUsersAssembly alloc] init];
    
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
    Class targetClass = [OSAllUsersViewController class];
    NSArray* protocols = @[
                           @protocol(OSAllUsersViewInput)
                           ];
                           
    NSArray* dependencies = @[
                              RamblerSelector(output)
                              ];
    RamblerTyphoonAssemblyTestsTypeDescriptor* descriptor = [RamblerTyphoonAssemblyTestsTypeDescriptor descriptorWithClass: targetClass
                                                                                                              andProtocols: protocols];

    // when
    id result = [self.assembly viewAllUsers];

    // then
    [self verifyTargetDependency: result
                  withDescriptor: descriptor
                    dependencies: dependencies];
}

- (void) testThatAssemblyCreatesPresenter 
{
    // given
    Class targetClass = [OSAllUsersPresenter class];
    NSArray* protocols = @[
                           @protocol(OSAllUsersModuleInput),
                           @protocol(OSAllUsersViewOutput),
                           @protocol(OSAllUsersInteractorOutput)
                           ];
                           
    NSArray* dependencies = @[
                              RamblerSelector(interactor),
                              RamblerSelector(view),
                              RamblerSelector(router)
                              ];
                              
    RamblerTyphoonAssemblyTestsTypeDescriptor* descriptor = [RamblerTyphoonAssemblyTestsTypeDescriptor descriptorWithClass: targetClass
                                                                                                              andProtocols: protocols];

    // when
    id result = [self.assembly presenterAllUsers];

    // then
    [self verifyTargetDependency: result
                  withDescriptor: descriptor
                    dependencies: dependencies];
}

- (void) testThatAssemblyCreatesInteractor 
{
    // given
    Class targetClass = [OSAllUsersInteractor class];
    
    NSArray* protocols = @[
                           @protocol(OSAllUsersInteractorInput)
                           ];
                           
    NSArray* dependencies = @[
                              RamblerSelector(output)
                              ];
                              
    RamblerTyphoonAssemblyTestsTypeDescriptor* descriptor = [RamblerTyphoonAssemblyTestsTypeDescriptor descriptorWithClass: targetClass
                                                                                                              andProtocols: protocols];
													      
    // when
    id result = [self.assembly interactorAllUsers];

    // then
    [self verifyTargetDependency: result
                  withDescriptor: descriptor
                    dependencies: dependencies];
}

- (void) testThatAssemblyCreatesRouter 
{
    // given
    Class targetClass = [OSAllUsersRouter class];
    
    NSArray* protocols = @[
                           @protocol(OSAllUsersRouterInput)
                           ];
                           
    NSArray* dependencies = @[
                              RamblerSelector(transitionHandler)
                              ];
                              
    RamblerTyphoonAssemblyTestsTypeDescriptor* descriptor = [RamblerTyphoonAssemblyTestsTypeDescriptor descriptorWithClass: targetClass
                                                                                                              andProtocols: protocols];

    // when
    id result = [self.assembly routerAllUsers];

    // then
    [self verifyTargetDependency: result
                  withDescriptor: descriptor
                    dependencies: dependencies];
}

@end
