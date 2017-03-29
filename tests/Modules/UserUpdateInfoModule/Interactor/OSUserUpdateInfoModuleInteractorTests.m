//
//  OSUserUpdateInfoModuleInteractorTests.m
//  ViperSampleProject
//
//  Created by Nikolay Chaban on 29/03/2017.
//  Copyright © 2017 OnSight. All rights reserved.
//

// Frameworks
#import <XCTest/XCTest.h>
#import <OCMock/OCMock.h>

// Classes
#import "OSUserUpdateInfoModuleInteractor.h"

#import "OSUserUpdateInfoModuleInteractorOutput.h"


@interface OSUserUpdateInfoModuleInteractorTests : XCTestCase

@property (nonatomic, strong) OSUserUpdateInfoModuleInteractor* interactor;

@property (nonatomic, strong) id mockOutput;

@end

@implementation OSUserUpdateInfoModuleInteractorTests


#pragma mark - Setup environment of the testing - 

- (void) setUp 
{
    [super setUp];

    self.interactor = [[OSUserUpdateInfoModuleInteractor alloc] init];

    self.mockOutput = OCMProtocolMock(@protocol(OSUserUpdateInfoModuleInteractorOutput));

    self.interactor.output = self.mockOutput;
}

- (void) tearDown 
{
    self.interactor = nil;

    self.mockOutput = nil;

    [super tearDown];
}

#pragma mark - Testing methods OSUserUpdateInfoModuleInteractorInput -

@end
