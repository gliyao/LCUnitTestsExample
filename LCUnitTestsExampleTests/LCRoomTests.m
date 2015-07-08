//
//  LCRoomTests.m
//  LCUnitTestsExample
//
//  Created by Liyao on 2015/6/19.
//  Copyright (c) 2015年 Liyao. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <XCTest/XCTest.h>

#import "LCRoom.h"

@interface LCRoomTests : XCTestCase

@end

@implementation LCRoomTests

#pragma mark - init
- (void)testLightOnInit
{
    LCRoom *room = [[LCRoom alloc] initWithLight:YES];
    XCTAssertTrue(room.isLight);
}

- (void)testLightOffInit
{
    LCRoom *room = [[LCRoom alloc] initWithLight:NO];
    XCTAssertFalse(room.isLight);
}

#pragma mark - openLight
// 驗證狀態
// 關燈的房間 > 按下電燈開關 > 電燈打開 (開燈的房間)
- (void)testOpenLightWhenLightOff
{
    //Arrange - 關燈的房間
    LCRoom *room = [[LCRoom alloc] initWithLight:NO];
    
    //Act - 按下電燈開關
    [room turnOnLight];
    
    //Assert - 電燈打開 (開燈的房間)
    XCTAssertTrue(room.isLight);
}

- (void)testOpenLightWhenLightOn
{
    //Arrange
    LCRoom *room = [[LCRoom alloc] initWithLight:YES];
    
    //Act
    [room turnOnLight];
    
    //Assert
    XCTAssertTrue(room.isLight);
}

#pragma mark - closeLight
- (void)testCloseLightWhenLightOff
{
    LCRoom *room = [[LCRoom alloc] initWithLight:NO];
    
    [room turnOffLight];
    
    XCTAssertFalse(room.isLight);
}

- (void)testCloseLightWhenLightOn
{
    LCRoom *room = [[LCRoom alloc] initWithLight:YES];
    
    [room turnOffLight];
    
    XCTAssertFalse(room.isLight);
}

@end
