//
//  OSUserInfoViewControllerTests.m
//  ViperSampleProject
//
//  Created by Valeria Mozghova on 28/03/2017.
//  Copyright © 2017 OnSight. All rights reserved.
//

// Frameworks
#import <XCTest/XCTest.h>
#import <OCMock/OCMock.h>

// Classes
#import "OSUserInfoViewController.h"

#import "OSUserInfoViewOutput.h"

@interface OSUserInfoViewControllerTests : XCTestCase

@property (nonatomic, strong) OSUserInfoViewController* controller;

@property (nonatomic, strong) id mockOutput;

@end

@implementation OSUserInfoViewControllerTests


#pragma mark - Setup environment of the testing - 

- (void) setUp 
{
    [super setUp];

    self.controller = [[OSUserInfoViewController alloc] init];

    self.mockOutput = OCMProtocolMock(@protocol(OSUserInfoViewOutput));

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


#pragma mark - Methods testing OSUserInfoViewInput -

@end
