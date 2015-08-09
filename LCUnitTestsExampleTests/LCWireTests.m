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

@interface LCWireTests : XCTestCase

@end

@implementation LCWireTests

- (void)testExample
{
    LCWire *wire = [[LCWire alloc] init];
    XCTAssert(wire.isExpired);
}


@end
