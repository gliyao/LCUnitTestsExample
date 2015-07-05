//
//  DummyUITableViewDataSource.m
//  LCUnitTestsExample
//
//  Created by Liyao on 2015/7/5.
//  Copyright (c) 2015年 Liyao. All rights reserved.
//

#import "DummyUITableViewDataSource.h"

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
