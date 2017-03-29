//
//  OSUserUpdateInfoModulePresenterTests.m
//  ViperSampleProject
//
//  Created by Nikolay Chaban on 29/03/2017.
//  Copyright © 2017 OnSight. All rights reserved.
//

// Frameworks
#import <XCTest/XCTest.h>
#import <OCMock/OCMock.h>

// Classes
#import "OSUserUpdateInfoModulePresenter.h"

#import "OSUserUpdateInfoModuleViewInput.h"
#import "OSUserUpdateInfoModuleInteractorInput.h"
#import "OSUserUpdateInfoModuleRouterInput.h"

@interface OSUserUpdateInfoModulePresenterTests : XCTestCase

@property (nonatomic, strong) OSUserUpdateInfoModulePresenter* presenter;

@property (nonatomic, strong) id mockInteractor;
@property (nonatomic, strong) id mockRouter;
@property (nonatomic, strong) id mockView;

@end

@implementation OSUserUpdateInfoModulePresenterTests


#pragma mark - Setup environment of the testing - 

- (void)setUp 
{
    [super setUp];

    self.presenter = [[OSUserUpdateInfoModulePresenter alloc] init];

    self.mockInteractor = OCMProtocolMock(@protocol(OSUserUpdateInfoModuleInteractorInput));
    self.mockRouter = OCMProtocolMock(@protocol(OSUserUpdateInfoModuleRouterInput));
    self.mockView = OCMProtocolMock(@protocol(OSUserUpdateInfoModuleViewInput));

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


#pragma mark - Testing methods OSUserUpdateInfoModuleModuleInput -


#pragma mark - Testing methods OSUserUpdateInfoModuleViewOutput -

- (void) testThatPresenterHandlesViewReadyEvent 
{
    // given


    // when
    [self.presenter didTriggerViewReadyEvent];

    // then
    OCMVerify([self.mockView setupInitialState]);
}


#pragma mark - Testing methods OSUserUpdateInfoModuleInteractorOutput -

@end
