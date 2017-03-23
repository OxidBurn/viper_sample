//
//  OSRegisterModulePresenterTests.m
//  ViperSampleProject
//
//  Created by Nikolay Chaban on 23/03/2017.
//  Copyright © 2017 OnSight. All rights reserved.
//

// Frameworks
#import <XCTest/XCTest.h>
#import <OCMock/OCMock.h>

// Classes
#import "OSRegisterModulePresenter.h"

#import "OSRegisterModuleViewInput.h"
#import "OSRegisterModuleInteractorInput.h"
#import "OSRegisterModuleRouterInput.h"

@interface OSRegisterModulePresenterTests : XCTestCase

@property (nonatomic, strong) OSRegisterModulePresenter* presenter;

@property (nonatomic, strong) id mockInteractor;
@property (nonatomic, strong) id mockRouter;
@property (nonatomic, strong) id mockView;

@end

@implementation OSRegisterModulePresenterTests


#pragma mark - Setup environment of the testing - 

- (void)setUp 
{
    [super setUp];

    self.presenter = [[OSRegisterModulePresenter alloc] init];

    self.mockInteractor = OCMProtocolMock(@protocol(OSRegisterModuleInteractorInput));
    self.mockRouter = OCMProtocolMock(@protocol(OSRegisterModuleRouterInput));
    self.mockView = OCMProtocolMock(@protocol(OSRegisterModuleViewInput));

    self.presenter.interactor = self.mockInteractor;
    self.presenter.router     = self.mockRouter;
    self.presenter.view 	  = self.mockView;
}

- (void) tearDown 
{
    self.presenter = nil;

    self.mockView	    = nil;
    self.mockRouter     = nil;
    self.mockInteractor = nil;

    [super tearDown];
}


#pragma mark - Testing methods OSRegisterModuleModuleInput -


#pragma mark - Testing methods OSRegisterModuleViewOutput -

- (void) testThatPresenterHandlesViewReadyEvent 
{
    // given


    // when
    [self.presenter didTriggerViewReadyEvent];

    // then
    OCMVerify([self.mockView setupInitialState]);
}


#pragma mark - Testing methods OSRegisterModuleInteractorOutput -

@end
