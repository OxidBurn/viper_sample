//
//  OSAvatarsGalleryInteractorTests.m
//  ViperSampleProject
//
//  Created by Valeria Mozghova on 30/03/2017.
//  Copyright © 2017 OnSight. All rights reserved.
//

// Frameworks
#import <XCTest/XCTest.h>
#import <OCMock/OCMock.h>

// Classes
#import "OSAvatarsGalleryInteractor.h"

#import "OSAvatarsGalleryInteractorOutput.h"


@interface OSAvatarsGalleryInteractorTests : XCTestCase

@property (nonatomic, strong) OSAvatarsGalleryInteractor* interactor;

@property (nonatomic, strong) id mockOutput;

@end

@implementation OSAvatarsGalleryInteractorTests


#pragma mark - Setup environment of the testing - 

- (void) setUp 
{
    [super setUp];

    self.interactor = [[OSAvatarsGalleryInteractor alloc] init];

    self.mockOutput = OCMProtocolMock(@protocol(OSAvatarsGalleryInteractorOutput));

    self.interactor.output = self.mockOutput;
}

- (void) tearDown 
{
    self.interactor = nil;

    self.mockOutput = nil;

    [super tearDown];
}

#pragma mark - Testing methods OSAvatarsGalleryInteractorInput -

@end
