//
//  LCWireTests.m
//  LCUnitTestsExample
//
//  Created by Liyao on 2015/8/9.
//  Copyright (c) 2015年 Liyao. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <XCTest/XCTest.h>
#import "LCWire.h"
#import "OCMock.h"


@interface LCWireTests : XCTestCase
@end

@implementation LCWireTests

- (void)testExample
{
    LCWire *wire = [[LCWire alloc] init];
    XCTAssert(wire.isExpired);
}


- (void)testMockDate
{
    NSDate *now = [NSDate date];
    
    NSDateComponents *comps = [[NSDateComponents alloc] init];
    [comps setDay:10];
    [comps setMonth:10];
    [comps setYear:2010];
    NSDate *speficDate = [[NSCalendar currentCalendar] dateFromComponents:comps];
    
    id mockDate = OCMClassMock([NSDate class]);
    OCMStub([mockDate date]).andReturn(speficDate);
    
    // Mock [NSDate date] 讓他回傳指定日期, 也就是 Mock 現在時間
    NSLog(@"now: %@, mockDate: %@",now, [NSDate date]);
}

- (void)testMockUserdefault
{
    NSString *name = [[NSUserDefaults standardUserDefaults] objectForKey:@"userName"];
    
    id mockUserDefault = OCMPartialMock([NSUserDefaults standardUserDefaults]);
    OCMStub([mockUserDefault objectForKey:@"userName"]).andReturn(@"Liyao Chen");
    NSString *mockName = [[NSUserDefaults standardUserDefaults] objectForKey:@"userName"];
    
    
    NSLog(@"name: %@, mockName: %@", name, mockName);
}

@end
