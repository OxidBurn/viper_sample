//
//  OSAvatarsGalleryPresenterTests.m
//  ViperSampleProject
//
//  Created by Valeria Mozghova on 30/03/2017.
//  Copyright © 2017 OnSight. All rights reserved.
//

// Frameworks
#import <XCTest/XCTest.h>
#import <OCMock/OCMock.h>

// Classes
#import "OSAvatarsGalleryPresenter.h"

#import "OSAvatarsGalleryViewInput.h"
#import "OSAvatarsGalleryInteractorInput.h"
#import "OSAvatarsGalleryRouterInput.h"

@interface OSAvatarsGalleryPresenterTests : XCTestCase

@property (nonatomic, strong) OSAvatarsGalleryPresenter* presenter;

@property (nonatomic, strong) id mockInteractor;
@property (nonatomic, strong) id mockRouter;
@property (nonatomic, strong) id mockView;

@end

@implementation OSAvatarsGalleryPresenterTests


#pragma mark - Setup environment of the testing - 

- (void)setUp 
{
    [super setUp];

    self.presenter = [[OSAvatarsGalleryPresenter alloc] init];

    self.mockInteractor = OCMProtocolMock(@protocol(OSAvatarsGalleryInteractorInput));
    self.mockRouter = OCMProtocolMock(@protocol(OSAvatarsGalleryRouterInput));
    self.mockView = OCMProtocolMock(@protocol(OSAvatarsGalleryViewInput));

    self.presenter.interactor = self.mockInteractor;
    self.presenter.router     = self.mockRouter;
    self.presenter.view 	  = self.mockView;
}

- (void) tearDown 
{
    self.presenter = nil;

    self.mockView	    = nil;
    self.mockRouter     = nil;
    self.mockInteractor = nil;

    [super tearDown];
}


#pragma mark - Testing methods OSAvatarsGalleryModuleInput -


#pragma mark - Testing methods OSAvatarsGalleryViewOutput -

- (void) testThatPresenterHandlesViewReadyEvent 
{
    // given


    // when
    [self.presenter didTriggerViewReadyEvent];

    // then
    //OCMVerify([self.mockView setupInitialState]);
}


#pragma mark - Testing methods OSAvatarsGalleryInteractorOutput -

@end
