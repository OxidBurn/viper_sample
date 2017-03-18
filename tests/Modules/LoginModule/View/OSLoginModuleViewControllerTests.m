//
//  OSLoginModuleViewControllerTests.m
//  ViperSampleProject
//
//  Created by Nikolay Chaban on 18/03/2017.
//  Copyright © 2017 OnSight. All rights reserved.
//

// Frameworks
#import <XCTest/XCTest.h>
#import <OCMock/OCMock.h>

// Classes
#import "OSLoginModuleViewController.h"

#import "OSLoginModuleViewOutput.h"

@interface OSLoginModuleViewControllerTests : XCTestCase

@property (nonatomic, strong) OSLoginModuleViewController* controller;

@property (nonatomic, strong) id mockOutput;

@end

@implementation OSLoginModuleViewControllerTests


#pragma mark - Setup environment of the testing - 

- (void) setUp 
{
    [super setUp];

    self.controller = [[OSLoginModuleViewController alloc] init];

    self.mockOutput = OCMProtocolMock(@protocol(OSLoginModuleViewOutput));

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


#pragma mark - Methods testing OSLoginModuleViewInput -

@end
