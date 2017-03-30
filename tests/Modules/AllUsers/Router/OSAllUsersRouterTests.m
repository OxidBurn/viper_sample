//
//  OSAllUsersRouterTests.m
//  ViperSampleProject
//
//  Created by Valeria Mozghova on 29/03/2017.
//  Copyright © 2017 OnSight. All rights reserved.
//

// Frameworks
#import <XCTest/XCTest.h>
#import <OCMock/OCMock.h>

// Classes
#import "OSAllUsersRouter.h"

@interface OSAllUsersRouterTests : XCTestCase

@property (nonatomic, strong) OSAllUsersRouter *router;

@end

@implementation OSAllUsersRouterTests


#pragma mark - Setup environment of the testing - 

- (void) setUp 
{
    [super setUp];

    self.router = [[OSAllUsersRouter alloc] init];
}

- (void) tearDown 
{
    self.router = nil;

    [super tearDown];
}

@end
