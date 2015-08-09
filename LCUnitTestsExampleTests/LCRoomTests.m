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
#import "Expirable.h"

// 永遠不會過期的電線
@interface LCNeverExpiredWire : NSObject <Expirable>
@end
@implementation LCNeverExpiredWire
- (BOOL)isExpired {
    return NO;
}
@end


@interface LCRoomTests : XCTestCase
@property (strong, nonatomic) id<Expirable> wire;
@end
@implementation LCRoomTests

- (void)setUp
{
    [super setUp];
    self.wire = [[LCNeverExpiredWire alloc] init];
}

- (void)tearDown
{
    self.wire = nil;
    [super tearDown];
}

#pragma mark - init
- (void)testLightOnInit
{
    LCRoom *room = [[LCRoom alloc] initWithLight:YES wire:self.wire];
    XCTAssertTrue(room.isLight);
}

- (void)testLightOffInit
{
    LCRoom *room = [[LCRoom alloc] initWithLight:NO wire:self.wire];

    XCTAssertFalse(room.isLight);
}

#pragma mark - openLight
// 驗證狀態
// 關燈的房間 > 按下電燈開關 > 電燈打開 (開燈的房間)
- (void)testOpenLightWhenLightOff
{
    //Arrange - 關燈的房間
    LCRoom *room = [[LCRoom alloc] initWithLight:NO wire:self.wire];

    //Act - 按下電燈開關
    [room turnOnLight];
    
    //Assert - 電燈打開 (開燈的房間)
    XCTAssertTrue(room.isLight);
}

- (void)testOpenLightWhenLightOn
{
    //Arrange
    LCRoom *room = [[LCRoom alloc] initWithLight:YES wire:self.wire];
    
    //Act
    [room turnOnLight];
    
    //Assert
    XCTAssertTrue(room.isLight);
}

#pragma mark - closeLight
- (void)testCloseLightWhenLightOff
{
    LCRoom *room = [[LCRoom alloc] initWithLight:NO wire:self.wire];
    
    [room turnOffLight];
    
    XCTAssertFalse(room.isLight);
}

- (void)testCloseLightWhenLightOn
{
    LCRoom *room = [[LCRoom alloc] initWithLight:YES wire:self.wire];
    
    [room turnOffLight];
    
    XCTAssertFalse(room.isLight);
}

@end
