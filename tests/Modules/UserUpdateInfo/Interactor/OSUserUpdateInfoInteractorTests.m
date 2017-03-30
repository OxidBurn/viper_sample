//
//  OSUserUpdateInfoInteractorTests.m
//  ViperSampleProject
//
//  Created by Nikolay Chaban on 29/03/2017.
//  Copyright © 2017 OnSight. All rights reserved.
//

// Frameworks
#import <XCTest/XCTest.h>
#import <OCMock/OCMock.h>

// Classes
#import "OSUserUpdateInfoInteractor.h"

#import "OSUserUpdateInfoInteractorOutput.h"


@interface OSUserUpdateInfoInteractorTests : XCTestCase

@property (nonatomic, strong) OSUserUpdateInfoInteractor* interactor;

@property (nonatomic, strong) id mockOutput;

@end

@implementation OSUserUpdateInfoInteractorTests


#pragma mark - Setup environment of the testing - 

- (void) setUp 
{
    [super setUp];

    self.interactor = [[OSUserUpdateInfoInteractor alloc] init];

    self.mockOutput = OCMProtocolMock(@protocol(OSUserUpdateInfoInteractorOutput));

    self.interactor.output = self.mockOutput;
}

- (void) tearDown 
{
    self.interactor = nil;

    self.mockOutput = nil;

    [super tearDown];
}

#pragma mark - Testing methods OSUserUpdateInfoInteractorInput -

@end
