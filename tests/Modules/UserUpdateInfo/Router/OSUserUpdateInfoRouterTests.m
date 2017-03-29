//
//  OSUserUpdateInfoRouterTests.m
//  ViperSampleProject
//
//  Created by Nikolay Chaban on 29/03/2017.
//  Copyright © 2017 OnSight. All rights reserved.
//

// Frameworks
#import <XCTest/XCTest.h>
#import <OCMock/OCMock.h>

// Classes
#import "OSUserUpdateInfoRouter.h"

@interface OSUserUpdateInfoRouterTests : XCTestCase

@property (nonatomic, strong) OSUserUpdateInfoRouter *router;

@end

@implementation OSUserUpdateInfoRouterTests


#pragma mark - Setup environment of the testing - 

- (void) setUp 
{
    [super setUp];

    self.router = [[OSUserUpdateInfoRouter alloc] init];
}

- (void) tearDown 
{
    self.router = nil;

    [super tearDown];
}

@end
