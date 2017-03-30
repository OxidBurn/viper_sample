//
//  OSAllUsersInteractorTests.m
//  ViperSampleProject
//
//  Created by Valeria Mozghova on 29/03/2017.
//  Copyright © 2017 OnSight. All rights reserved.
//

// Frameworks
#import <XCTest/XCTest.h>
#import <OCMock/OCMock.h>

// Classes
#import "OSAllUsersInteractor.h"

#import "OSAllUsersInteractorOutput.h"


@interface OSAllUsersInteractorTests : XCTestCase

@property (nonatomic, strong) OSAllUsersInteractor* interactor;

@property (nonatomic, strong) id mockOutput;

@end

@implementation OSAllUsersInteractorTests


#pragma mark - Setup environment of the testing - 

- (void) setUp 
{
    [super setUp];

    self.interactor = [[OSAllUsersInteractor alloc] init];

    self.mockOutput = OCMProtocolMock(@protocol(OSAllUsersInteractorOutput));

    self.interactor.output = self.mockOutput;
}

- (void) tearDown 
{
    self.interactor = nil;

    self.mockOutput = nil;

    [super tearDown];
}

#pragma mark - Testing methods OSAllUsersInteractorInput -

@end
