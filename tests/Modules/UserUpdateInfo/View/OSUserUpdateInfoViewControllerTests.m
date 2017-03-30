//
//  OSUserUpdateInfoViewControllerTests.m
//  ViperSampleProject
//
//  Created by Nikolay Chaban on 29/03/2017.
//  Copyright © 2017 OnSight. All rights reserved.
//

// Frameworks
#import <XCTest/XCTest.h>
#import <OCMock/OCMock.h>

// Classes
#import "OSUserUpdateInfoViewController.h"

#import "OSUserUpdateInfoViewOutput.h"

@interface OSUserUpdateInfoViewControllerTests : XCTestCase

@property (nonatomic, strong) OSUserUpdateInfoViewController* controller;

@property (nonatomic, strong) id mockOutput;

@end

@implementation OSUserUpdateInfoViewControllerTests


#pragma mark - Setup environment of the testing - 

- (void) setUp 
{
    [super setUp];

    self.controller = [[OSUserUpdateInfoViewController alloc] init];

    self.mockOutput = OCMProtocolMock(@protocol(OSUserUpdateInfoViewOutput));

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


#pragma mark - Methods testing OSUserUpdateInfoViewInput -

@end
