//
//  OSAvatarsGalleryViewControllerTests.m
//  ViperSampleProject
//
//  Created by Valeria Mozghova on 30/03/2017.
//  Copyright © 2017 OnSight. All rights reserved.
//

// Frameworks
#import <XCTest/XCTest.h>
#import <OCMock/OCMock.h>

// Classes
#import "OSAvatarsGalleryViewController.h"

#import "OSAvatarsGalleryViewOutput.h"

@interface OSAvatarsGalleryViewControllerTests : XCTestCase

@property (nonatomic, strong) OSAvatarsGalleryViewController* controller;

@property (nonatomic, strong) id mockOutput;

@end

@implementation OSAvatarsGalleryViewControllerTests


#pragma mark - Setup environment of the testing - 

- (void) setUp 
{
    [super setUp];

    self.controller = [[OSAvatarsGalleryViewController alloc] init];

    self.mockOutput = OCMProtocolMock(@protocol(OSAvatarsGalleryViewOutput));

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


#pragma mark - Methods testing OSAvatarsGalleryViewInput -

@end
