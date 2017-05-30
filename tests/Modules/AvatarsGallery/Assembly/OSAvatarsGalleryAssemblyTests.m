//
//  OSAvatarsGalleryAssemblyTests.m
//  ViperSampleProject
//
//  Created by Valeria Mozghova on 30/03/2017.
//  Copyright © 2017 OnSight. All rights reserved.
//

// Frameworks
#import <RamblerTyphoonUtils/AssemblyTesting.h>
#import <Typhoon/Typhoon.h>

// Classes
#import "OSAvatarsGalleryAssembly.h"
#import "OSAvatarsGalleryAssembly_Testable.h"

#import "OSAvatarsGalleryViewController.h"
#import "OSAvatarsGalleryPresenter.h"
#import "OSAvatarsGalleryInteractor.h"
#import "OSAvatarsGalleryRouter.h"

@interface OSAvatarsGalleryAssemblyTests : RamblerTyphoonAssemblyTests

@property (nonatomic, strong) OSAvatarsGalleryAssembly* assembly;

@end

@implementation OSAvatarsGalleryAssemblyTests


#pragma mark - Setup environment for testing - 

- (void) setUp 
{
    [super setUp];

    self.assembly = [[OSAvatarsGalleryAssembly alloc] init];
    
   // [self.assembly activate];
}

- (void)tearDown {
    self.assembly = nil;

    [super tearDown];
}

#pragma mark - Testing for the creation of the module elements -

- (void) testThatAssemblyCreatesViewController 
{
    // given
    Class targetClass = [OSAvatarsGalleryViewController class];
    NSArray* protocols = @[
                           @protocol(OSAvatarsGalleryViewInput)
                           ];
                           
    NSArray* dependencies = @[
                              RamblerSelector(output)
                              ];
    RamblerTyphoonAssemblyTestsTypeDescriptor* descriptor = [RamblerTyphoonAssemblyTestsTypeDescriptor descriptorWithClass: targetClass
                                                                                                              andProtocols: protocols];

    // when
    id result = [self.assembly viewAvatarsGallery];

    // then
    [self verifyTargetDependency: result
                  withDescriptor: descriptor
                    dependencies: dependencies];
}

- (void) testThatAssemblyCreatesPresenter 
{
    // given
    Class targetClass = [OSAvatarsGalleryPresenter class];
    NSArray* protocols = @[
                           @protocol(OSAvatarsGalleryModuleInput),
                           @protocol(OSAvatarsGalleryViewOutput),
                           @protocol(OSAvatarsGalleryInteractorOutput)
                           ];
                           
    NSArray* dependencies = @[
                              RamblerSelector(interactor),
                              RamblerSelector(view),
                              RamblerSelector(router)
                              ];
                              
    RamblerTyphoonAssemblyTestsTypeDescriptor* descriptor = [RamblerTyphoonAssemblyTestsTypeDescriptor descriptorWithClass: targetClass
                                                                                                              andProtocols: protocols];

    // when
    id result = [self.assembly presenterAvatarsGallery];

    // then
    [self verifyTargetDependency: result
                  withDescriptor: descriptor
                    dependencies: dependencies];
}

- (void) testThatAssemblyCreatesInteractor 
{
    // given
    Class targetClass = [OSAvatarsGalleryInteractor class];
    
    NSArray* protocols = @[
                           @protocol(OSAvatarsGalleryInteractorInput)
                           ];
                           
    NSArray* dependencies = @[
                              RamblerSelector(output)
                              ];
                              
    RamblerTyphoonAssemblyTestsTypeDescriptor* descriptor = [RamblerTyphoonAssemblyTestsTypeDescriptor descriptorWithClass: targetClass
                                                                                                              andProtocols: protocols];
													      
    // when
    id result = [self.assembly interactorAvatarsGallery];

    // then
    [self verifyTargetDependency: result
                  withDescriptor: descriptor
                    dependencies: dependencies];
}

- (void) testThatAssemblyCreatesRouter 
{
    // given
    Class targetClass = [OSAvatarsGalleryRouter class];
    
    NSArray* protocols = @[
                           @protocol(OSAvatarsGalleryRouterInput)
                           ];
                           
    NSArray* dependencies = @[
                              RamblerSelector(transitionHandler)
                              ];
                              
    RamblerTyphoonAssemblyTestsTypeDescriptor* descriptor = [RamblerTyphoonAssemblyTestsTypeDescriptor descriptorWithClass: targetClass
                                                                                                              andProtocols: protocols];

    // when
    id result = [self.assembly routerAvatarsGallery];

    // then
    [self verifyTargetDependency: result
                  withDescriptor: descriptor
                    dependencies: dependencies];
}

@end
