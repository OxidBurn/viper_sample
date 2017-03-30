//
//  OSUserInfoPresenterTests.m
//  ViperSampleProject
//
//  Created by Valeria Mozghova on 28/03/2017.
//  Copyright © 2017 OnSight. All rights reserved.
//

// Frameworks
#import <XCTest/XCTest.h>
#import <OCMock/OCMock.h>

// Classes
#import "OSUserInfoPresenter.h"

#import "OSUserInfoViewInput.h"
#import "OSUserInfoInteractorInput.h"
#import "OSUserInfoRouterInput.h"

@interface OSUserInfoPresenterTests : XCTestCase

@property (nonatomic, strong) OSUserInfoPresenter* presenter;

@property (nonatomic, strong) id mockInteractor;
@property (nonatomic, strong) id mockRouter;
@property (nonatomic, strong) id mockView;

@end

@implementation OSUserInfoPresenterTests


#pragma mark - Setup environment of the testing - 

- (void)setUp 
{
    [super setUp];

    self.presenter = [[OSUserInfoPresenter alloc] init];

    self.mockInteractor = OCMProtocolMock(@protocol(OSUserInfoInteractorInput));
    self.mockRouter = OCMProtocolMock(@protocol(OSUserInfoRouterInput));
    self.mockView = OCMProtocolMock(@protocol(OSUserInfoViewInput));

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


#pragma mark - Testing methods OSUserInfoModuleInput -


#pragma mark - Testing methods OSUserInfoViewOutput -

- (void) testThatPresenterHandlesViewReadyEvent 
{
    // given


    // when
    [self.presenter didTriggerViewReadyEvent];

    // then
    OCMVerify([self.mockView setupInitialState]);
}


#pragma mark - Testing methods OSUserInfoInteractorOutput -

@end
