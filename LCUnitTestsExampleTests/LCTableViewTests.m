//
//  LCTableViewTests.m
//  LCUnitTestsExample
//
//  Created by Liyao on 2015/7/5.
//  Copyright (c) 2015年 Liyao. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <XCTest/XCTest.h>
#import "DummyUITableViewDataSource.h"

@interface LCTableViewTests : XCTestCase

@end

@implementation LCTableViewTests

//驗證互動
- (void)testExample
{
    //Arrange
    DummyUITableViewDataSource *dataSource = [[DummyUITableViewDataSource alloc] init];
    UITableView *tableView = [[UITableView alloc] init];
    tableView.dataSource = dataSource;
    
    //Act
    [tableView reloadData];
    
    //Assert
    NSInteger rowCount = [tableView numberOfRowsInSection:0];
    XCTAssertEqual(rowCount, 40);
}

@end
