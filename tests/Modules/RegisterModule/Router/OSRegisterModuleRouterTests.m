//
//  OSRegisterModuleRouterTests.m
//  ViperSampleProject
//
//  Created by Nikolay Chaban on 18/03/2017.
//  Copyright © 2017 OnSight. All rights reserved.
//

// Frameworks
#import <XCTest/XCTest.h>
#import <OCMock/OCMock.h>

// Classes
#import "OSRegisterModuleRouter.h"

@interface OSRegisterModuleRouterTests : XCTestCase

@property (nonatomic, strong) OSRegisterModuleRouter *router;

@end

@implementation OSRegisterModuleRouterTests


#pragma mark - Setup environment of the testing - 

- (void) setUp 
{
    [super setUp];

    self.router = [[OSRegisterModuleRouter alloc] init];
}

- (void) tearDown 
{
    self.router = nil;

    [super tearDown];
}

@end
