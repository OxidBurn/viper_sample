//
//  OSLoginModuleInteractorTests.m
//  ViperSampleProject
//
//  Created by Nikolay Chaban on 18/03/2017.
//  Copyright © 2017 OnSight. All rights reserved.
//

// Frameworks
#import <XCTest/XCTest.h>
#import <OCMock/OCMock.h>

// Classes
#import "OSLoginModuleInteractor.h"

#import "OSLoginModuleInteractorOutput.h"


@interface OSLoginModuleInteractorTests : XCTestCase

@property (nonatomic, strong) OSLoginModuleInteractor* interactor;

@property (nonatomic, strong) id mockOutput;

@end

@implementation OSLoginModuleInteractorTests


#pragma mark - Setup environment of the testing - 

- (void) setUp 
{
    [super setUp];

    self.interactor = [[OSLoginModuleInteractor alloc] init];

    self.mockOutput = OCMProtocolMock(@protocol(OSLoginModuleInteractorOutput));

    self.interactor.output = self.mockOutput;
}

- (void) tearDown 
{
    self.interactor = nil;

    self.mockOutput = nil;

    [super tearDown];
}

#pragma mark - Testing methods OSLoginModuleInteractorInput -

@end
