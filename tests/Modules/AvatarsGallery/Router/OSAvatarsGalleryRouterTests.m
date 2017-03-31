//
//  OSAvatarsGalleryRouterTests.m
//  ViperSampleProject
//
//  Created by Valeria Mozghova on 30/03/2017.
//  Copyright © 2017 OnSight. All rights reserved.
//

// Frameworks
#import <XCTest/XCTest.h>
#import <OCMock/OCMock.h>

// Classes
#import "OSAvatarsGalleryRouter.h"

@interface OSAvatarsGalleryRouterTests : XCTestCase

@property (nonatomic, strong) OSAvatarsGalleryRouter *router;

@end

@implementation OSAvatarsGalleryRouterTests


#pragma mark - Setup environment of the testing - 

- (void) setUp 
{
    [super setUp];

    self.router = [[OSAvatarsGalleryRouter alloc] init];
}

- (void) tearDown 
{
    self.router = nil;

    [super tearDown];
}

@end
