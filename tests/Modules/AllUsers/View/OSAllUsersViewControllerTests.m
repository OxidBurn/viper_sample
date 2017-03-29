//
//  OSAllUsersViewControllerTests.m
//  ViperSampleProject
//
//  Created by Valeria Mozghova on 29/03/2017.
//  Copyright © 2017 OnSight. All rights reserved.
//

// Frameworks
#import <XCTest/XCTest.h>
#import <OCMock/OCMock.h>

// Classes
#import "OSAllUsersViewController.h"

#import "OSAllUsersViewOutput.h"

@interface OSAllUsersViewControllerTests : XCTestCase

@property (nonatomic, strong) OSAllUsersViewController* controller;

@property (nonatomic, strong) id mockOutput;

@end

@implementation OSAllUsersViewControllerTests


#pragma mark - Setup environment of the testing - 

- (void) setUp 
{
    [super setUp];

    self.controller = [[OSAllUsersViewController alloc] init];

    self.mockOutput = OCMProtocolMock(@protocol(OSAllUsersViewOutput));

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


#pragma mark - Methods testing OSAllUsersViewInput -

@end
