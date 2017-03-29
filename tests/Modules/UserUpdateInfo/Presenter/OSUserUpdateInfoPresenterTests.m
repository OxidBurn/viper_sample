//
//  OSUserUpdateInfoPresenterTests.m
//  ViperSampleProject
//
//  Created by Nikolay Chaban on 29/03/2017.
//  Copyright © 2017 OnSight. All rights reserved.
//

// Frameworks
#import <XCTest/XCTest.h>
#import <OCMock/OCMock.h>

// Classes
#import "OSUserUpdateInfoPresenter.h"

#import "OSUserUpdateInfoViewInput.h"
#import "OSUserUpdateInfoInteractorInput.h"
#import "OSUserUpdateInfoRouterInput.h"

@interface OSUserUpdateInfoPresenterTests : XCTestCase

@property (nonatomic, strong) OSUserUpdateInfoPresenter* presenter;

@property (nonatomic, strong) id mockInteractor;
@property (nonatomic, strong) id mockRouter;
@property (nonatomic, strong) id mockView;

@end

@implementation OSUserUpdateInfoPresenterTests


#pragma mark - Setup environment of the testing - 

- (void)setUp 
{
    [super setUp];

    self.presenter = [[OSUserUpdateInfoPresenter alloc] init];

    self.mockInteractor = OCMProtocolMock(@protocol(OSUserUpdateInfoInteractorInput));
    self.mockRouter = OCMProtocolMock(@protocol(OSUserUpdateInfoRouterInput));
    self.mockView = OCMProtocolMock(@protocol(OSUserUpdateInfoViewInput));

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


#pragma mark - Testing methods OSUserUpdateInfoModuleInput -


#pragma mark - Testing methods OSUserUpdateInfoViewOutput -

- (void) testThatPresenterHandlesViewReadyEvent 
{
    // given


    // when
    [self.presenter didTriggerViewReadyEvent];

    // then
    OCMVerify([self.mockView setupInitialState]);
}


#pragma mark - Testing methods OSUserUpdateInfoInteractorOutput -

@end
