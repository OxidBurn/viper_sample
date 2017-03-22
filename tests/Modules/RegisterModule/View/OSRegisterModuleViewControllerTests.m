//
//  OSRegisterModuleViewControllerTests.m
//  ViperSampleProject
//
//  Created by Nikolay Chaban on 18/03/2017.
//  Copyright © 2017 OnSight. All rights reserved.
//

// Frameworks
#import <XCTest/XCTest.h>
#import <OCMock/OCMock.h>

// Classes
#import "OSRegisterModuleViewController.h"

#import "OSRegisterModuleViewOutput.h"

@interface OSRegisterModuleViewControllerTests : XCTestCase

@property (nonatomic, strong) OSRegisterModuleViewController* controller;

@property (nonatomic, strong) id mockOutput;

@end

@implementation OSRegisterModuleViewControllerTests


#pragma mark - Setup environment of the testing - 

- (void) setUp 
{
    [super setUp];

    self.controller = [[OSRegisterModuleViewController alloc] init];

    self.mockOutput = OCMProtocolMock(@protocol(OSRegisterModuleViewOutput));

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


#pragma mark - Methods testing OSRegisterModuleViewInput -

@end
