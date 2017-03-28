//
//  OSUserInfoRouterTests.m
//  ViperSampleProject
//
//  Created by Valeria Mozghova on 28/03/2017.
//  Copyright © 2017 OnSight. All rights reserved.
//

// Frameworks
#import <XCTest/XCTest.h>
#import <OCMock/OCMock.h>

// Classes
#import "OSUserInfoRouter.h"

@interface OSUserInfoRouterTests : XCTestCase

@property (nonatomic, strong) OSUserInfoRouter *router;

@end

@implementation OSUserInfoRouterTests


#pragma mark - Setup environment of the testing - 

- (void) setUp 
{
    [super setUp];

    self.router = [[OSUserInfoRouter alloc] init];
}

- (void) tearDown 
{
    self.router = nil;

    [super tearDown];
}

@end
