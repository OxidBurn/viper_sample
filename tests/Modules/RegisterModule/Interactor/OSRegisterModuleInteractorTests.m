//
//  OSRegisterModuleInteractorTests.m
//  ViperSampleProject
//
//  Created by Nikolay Chaban on 23/03/2017.
//  Copyright © 2017 OnSight. All rights reserved.
//

// Frameworks
#import <XCTest/XCTest.h>
#import <OCMock/OCMock.h>

// Classes
#import "OSRegisterModuleInteractor.h"

#import "OSRegisterModuleInteractorOutput.h"


@interface OSRegisterModuleInteractorTests : XCTestCase

@property (nonatomic, strong) OSRegisterModuleInteractor* interactor;

@property (nonatomic, strong) id mockOutput;

@end

@implementation OSRegisterModuleInteractorTests


#pragma mark - Setup environment of the testing - 

- (void) setUp 
{
    [super setUp];

    self.interactor = [[OSRegisterModuleInteractor alloc] init];

    self.mockOutput = OCMProtocolMock(@protocol(OSRegisterModuleInteractorOutput));

    self.interactor.output = self.mockOutput;
}

- (void) tearDown 
{
    self.interactor = nil;

    self.mockOutput = nil;

    [super tearDown];
}

#pragma mark - Testing methods OSRegisterModuleInteractorInput -

@end
