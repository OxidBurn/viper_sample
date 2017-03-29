//
//  OSAllUsersPresenterTests.m
//  ViperSampleProject
//
//  Created by Valeria Mozghova on 29/03/2017.
//  Copyright © 2017 OnSight. All rights reserved.
//

// Frameworks
#import <XCTest/XCTest.h>
#import <OCMock/OCMock.h>

// Classes
#import "OSAllUsersPresenter.h"

#import "OSAllUsersViewInput.h"
#import "OSAllUsersInteractorInput.h"
#import "OSAllUsersRouterInput.h"

@interface OSAllUsersPresenterTests : XCTestCase

@property (nonatomic, strong) OSAllUsersPresenter* presenter;

@property (nonatomic, strong) id mockInteractor;
@property (nonatomic, strong) id mockRouter;
@property (nonatomic, strong) id mockView;

@end

@implementation OSAllUsersPresenterTests


#pragma mark - Setup environment of the testing - 

- (void)setUp 
{
    [super setUp];

    self.presenter = [[OSAllUsersPresenter alloc] init];

    self.mockInteractor = OCMProtocolMock(@protocol(OSAllUsersInteractorInput));
    self.mockRouter = OCMProtocolMock(@protocol(OSAllUsersRouterInput));
    self.mockView = OCMProtocolMock(@protocol(OSAllUsersViewInput));

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


#pragma mark - Testing methods OSAllUsersModuleInput -


#pragma mark - Testing methods OSAllUsersViewOutput -

- (void) testThatPresenterHandlesViewReadyEvent 
{
    // given


    // when
    [self.presenter didTriggerViewReadyEvent];

    // then
    OCMVerify([self.mockView setupInitialState]);
}


#pragma mark - Testing methods OSAllUsersInteractorOutput -

@end
