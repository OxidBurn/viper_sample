//
//  OSUserUpdateInfoModuleViewControllerTests.m
//  ViperSampleProject
//
//  Created by Nikolay Chaban on 29/03/2017.
//  Copyright © 2017 OnSight. All rights reserved.
//

// Frameworks
#import <XCTest/XCTest.h>
#import <OCMock/OCMock.h>

// Classes
#import "OSUserUpdateInfoModuleViewController.h"

#import "OSUserUpdateInfoModuleViewOutput.h"

@interface OSUserUpdateInfoModuleViewControllerTests : XCTestCase

@property (nonatomic, strong) OSUserUpdateInfoModuleViewController* controller;

@property (nonatomic, strong) id mockOutput;

@end

@implementation OSUserUpdateInfoModuleViewControllerTests


#pragma mark - Setup environment of the testing - 

- (void) setUp 
{
    [super setUp];

    self.controller = [[OSUserUpdateInfoModuleViewController alloc] init];

    self.mockOutput = OCMProtocolMock(@protocol(OSUserUpdateInfoModuleViewOutput));

    self.controller.output = self.mockOutput;
}

- (void) tearDown 
{
    self.controller = nil;

    self.mockOutput = nil;

    [super tearDown];
}

#pragma mark - Testing life cycle

- (void) testThatControllerNotifiesPresenterOnDidLoad 
{
	// given

	// when
	[self.controller viewDidLoad];

	// then
	OCMVerify([self.mockOutput didTriggerViewReadyEvent]);
}


#pragma mark - Testing interface methods -


#pragma mark - Methods testing OSUserUpdateInfoModuleViewInput -

@end
