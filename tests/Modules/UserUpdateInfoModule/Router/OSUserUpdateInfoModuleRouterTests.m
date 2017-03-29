//
//  OSUserUpdateInfoModuleRouterTests.m
//  ViperSampleProject
//
//  Created by Nikolay Chaban on 29/03/2017.
//  Copyright © 2017 OnSight. All rights reserved.
//

// Frameworks
#import <XCTest/XCTest.h>
#import <OCMock/OCMock.h>

// Classes
#import "OSUserUpdateInfoModuleRouter.h"

@interface OSUserUpdateInfoModuleRouterTests : XCTestCase

@property (nonatomic, strong) OSUserUpdateInfoModuleRouter *router;

@end

@implementation OSUserUpdateInfoModuleRouterTests


#pragma mark - Setup environment of the testing - 

- (void) setUp 
{
    [super setUp];

    self.router = [[OSUserUpdateInfoModuleRouter alloc] init];
}

- (void) tearDown 
{
    self.router = nil;

    [super tearDown];
}

@end
