//
//  LCTableViewTests.m
//  LCUnitTestsExample
//
//  Created by Liyao on 2015/7/5.
//  Copyright (c) 2015年 Liyao. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <XCTest/XCTest.h>
#import "OCMock.h"

@interface DummyUITableViewDataSource : NSObject <UITableViewDataSource>
@end
@implementation DummyUITableViewDataSource

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 40;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return nil;
}

@end


@interface LCTableViewTests : XCTestCase

@end

@implementation LCTableViewTests

//驗證互動
- (void)testTableViewDataSourceNumberOfRowsInSecitonWithDummyClass
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


- (void)testOCMockStubMethod
{
    //Arrange
    id protocolMock = OCMProtocolMock(@protocol(UITableViewDataSource));
    OCMStub([protocolMock numberOfSectionsInTableView:OCMOCK_ANY]).andReturn(1);
    OCMStub([protocolMock tableView:OCMOCK_ANY numberOfRowsInSection:0]).andReturn(40);
    OCMStub([protocolMock tableView:OCMOCK_ANY cellForRowAtIndexPath:OCMOCK_ANY]).andReturn(nil);
    
    XCTAssertEqual([protocolMock numberOfSectionsInTableView:OCMOCK_ANY], 1);
    XCTAssertEqual([protocolMock tableView:OCMOCK_ANY numberOfRowsInSection:0], 40);
    XCTAssertNil([protocolMock tableView:OCMOCK_ANY cellForRowAtIndexPath:OCMOCK_ANY]);
}

- (void)testTableViewDataSourceNumberOfRowsInSecitonWithStub
{
    //Arrange
    id protocolMock = OCMProtocolMock(@protocol(UITableViewDataSource));
    OCMStub([protocolMock numberOfSectionsInTableView:OCMOCK_ANY]).andReturn(1);
    OCMStub([protocolMock tableView:OCMOCK_ANY numberOfRowsInSection:0]).andReturn(40);
    OCMStub([protocolMock tableView:OCMOCK_ANY cellForRowAtIndexPath:OCMOCK_ANY]).andReturn(nil);
    UITableView *tableView = [[UITableView alloc] init];
    tableView.dataSource = protocolMock;
    
    //Act
    [tableView reloadData];
    
    //Assert
    NSInteger rowCount = [tableView numberOfRowsInSection:0];
    XCTAssertEqual(rowCount, 40);
}

@end
