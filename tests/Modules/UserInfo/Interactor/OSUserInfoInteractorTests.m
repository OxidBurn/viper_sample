//
//  OSUserInfoInteractorTests.m
//  ViperSampleProject
//
//  Created by Valeria Mozghova on 28/03/2017.
//  Copyright © 2017 OnSight. All rights reserved.
//

// Frameworks
#import <XCTest/XCTest.h>
#import <OCMock/OCMock.h>

// Classes
#import "OSUserInfoInteractor.h"

#import "OSUserInfoInteractorOutput.h"


@interface OSUserInfoInteractorTests : XCTestCase

@property (nonatomic, strong) OSUserInfoInteractor* interactor;

@property (nonatomic, strong) id mockOutput;

@end

@implementation OSUserInfoInteractorTests


#pragma mark - Setup environment of the testing - 

- (void) setUp 
{
    [super setUp];

    self.interactor = [[OSUserInfoInteractor alloc] init];

    self.mockOutput = OCMProtocolMock(@protocol(OSUserInfoInteractorOutput));

    self.interactor.output = self.mockOutput;
}

- (void) tearDown 
{
    self.interactor = nil;

    self.mockOutput = nil;

    [super tearDown];
}

#pragma mark - Testing methods OSUserInfoInteractorInput -

@end
