//
//  LCHouseTests.m
//  LCUnitTestsExample
//
//  Created by Liyao on 2015/7/5.
//  Copyright (c) 2015年 Liyao. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <XCTest/XCTest.h>

#import "LCRoom.h"
#import "LCHouse.h"
#import "LCWire.h"

@interface LCHouseTests : XCTestCase
@end

@implementation LCHouseTests

//驗證互動
- (void)testTurnOffHouseLight
{
    //Arrange
    LCWire *wire = [[LCWire alloc] init];
    LCRoom *roomA = [[LCRoom alloc] initWithLight:YES wire:wire];
    LCRoom *roomB = [[LCRoom alloc] initWithLight:YES wire:wire];
    LCHouse *house = [[LCHouse alloc] initWithRooms:@[roomA, roomB]];
    
    //Act
    [house turnOffHouseLight];
    
    //Assert
    XCTAssertFalse(roomA.isLight);
    XCTAssertFalse(roomB.isLight);
}

@end
