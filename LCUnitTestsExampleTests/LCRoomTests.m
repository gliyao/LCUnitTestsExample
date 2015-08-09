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
    LCWire *wire = [[LCWire alloc] init];
    LCRoom *room = [[LCRoom alloc] initWithLight:YES wire:wire];
    XCTAssertTrue(room.isLight);
}

- (void)testLightOffInit
{
    LCWire *wire = [[LCWire alloc] init];
    LCRoom *room = [[LCRoom alloc] initWithLight:NO wire:wire];

    XCTAssertFalse(room.isLight);
}

#pragma mark - openLight
// 驗證狀態
// 關燈的房間 > 按下電燈開關 > 電燈打開 (開燈的房間)
- (void)testOpenLightWhenLightOff
{
    //Arrange - 關燈的房間
    LCWire *wire = [[LCWire alloc] init];
    LCRoom *room = [[LCRoom alloc] initWithLight:NO wire:wire];

    //Act - 按下電燈開關
    [room turnOnLight];
    
    //Assert - 電燈打開 (開燈的房間)
    XCTAssertTrue(room.isLight);
}

- (void)testOpenLightWhenLightOn
{
    //Arrange
    LCWire *wire = [[LCWire alloc] init];
    LCRoom *room = [[LCRoom alloc] initWithLight:YES wire:wire];
    
    //Act
    [room turnOnLight];
    
    //Assert
    XCTAssertTrue(room.isLight);
}

#pragma mark - closeLight
- (void)testCloseLightWhenLightOff
{
    LCWire *wire = [[LCWire alloc] init];
    LCRoom *room = [[LCRoom alloc] initWithLight:NO wire:wire];
    
    [room turnOffLight];
    
    XCTAssertFalse(room.isLight);
}

- (void)testCloseLightWhenLightOn
{
    LCWire *wire = [[LCWire alloc] init];
    LCRoom *room = [[LCRoom alloc] initWithLight:YES wire:wire];
    
    [room turnOffLight];
    
    XCTAssertFalse(room.isLight);
}

@end
