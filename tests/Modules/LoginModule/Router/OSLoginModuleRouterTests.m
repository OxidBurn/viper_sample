//
//  OSLoginModuleRouterTests.m
//  ViperSampleProject
//
//  Created by Nikolay Chaban on 18/03/2017.
//  Copyright © 2017 OnSight. All rights reserved.
//

// Frameworks
#import <XCTest/XCTest.h>
#import <OCMock/OCMock.h>

// Classes
#import "OSLoginModuleRouter.h"

@interface OSLoginModuleRouterTests : XCTestCase

@property (nonatomic, strong) OSLoginModuleRouter *router;

@end

@implementation OSLoginModuleRouterTests


#pragma mark - Setup environment of the testing - 

- (void) setUp 
{
    [super setUp];

    self.router = [[OSLoginModuleRouter alloc] init];
}

- (void) tearDown 
{
    self.router = nil;

    [super tearDown];
}

@end
