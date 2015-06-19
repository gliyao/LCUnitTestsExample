//
//  LCUnitTestsExampleTests.m
//  LCUnitTestsExampleTests
//
//  Created by Liyao on 2015/6/19.
//  Copyright (c) 2015年 Liyao. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <XCTest/XCTest.h>

#import "LCCalculator.h"

@interface LCCalculatorTests : XCTestCase
@end

@implementation LCCalculatorTests

// 驗證回傳值
- (void)testSum
{
    //Arrange
    LCCalculator *calculator = [[LCCalculator alloc] init];
    NSNumber *a = @10;
    NSNumber *b = @5;
    
    //Act
    NSNumber *result = [calculator sumWithA:a andB:b];
    
    //Assert
    XCTAssertTrue([result isEqualToNumber:@15]);
}

@end
