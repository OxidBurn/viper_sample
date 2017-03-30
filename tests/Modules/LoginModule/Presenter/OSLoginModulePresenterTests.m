//
//  OSLoginModulePresenterTests.m
//  ViperSampleProject
//
//  Created by Nikolay Chaban on 18/03/2017.
//  Copyright © 2017 OnSight. All rights reserved.
//

// Frameworks
#import <XCTest/XCTest.h>
#import <OCMock/OCMock.h>

// Classes
#import "OSLoginModulePresenter.h"

#import "OSLoginModuleViewInput.h"
#import "OSLoginModuleInteractorInput.h"
#import "OSLoginModuleRouterInput.h"

@interface OSLoginModulePresenterTests : XCTestCase

@property (nonatomic, strong) OSLoginModulePresenter* presenter;

@property (nonatomic, strong) id mockInteractor;
@property (nonatomic, strong) id mockRouter;
@property (nonatomic, strong) id mockView;

@end

@implementation OSLoginModulePresenterTests


#pragma mark - Setup environment of the testing - 

- (void)setUp 
{
    [super setUp];

    self.presenter = [[OSLoginModulePresenter alloc] init];

    self.mockInteractor = OCMProtocolMock(@protocol(OSLoginModuleInteractorInput));
    self.mockRouter = OCMProtocolMock(@protocol(OSLoginModuleRouterInput));
    self.mockView = OCMProtocolMock(@protocol(OSLoginModuleViewInput));

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


#pragma mark - Testing methods OSLoginModuleModuleInput -


#pragma mark - Testing methods OSLoginModuleViewOutput -

- (void) testThatPresenterHandlesViewReadyEvent 
{
    // given


    // when
    [self.presenter didTriggerViewReadyEvent];

    // then
    OCMVerify([self.mockView setupInitialState]);
}


#pragma mark - Testing methods OSLoginModuleInteractorOutput -

@end
