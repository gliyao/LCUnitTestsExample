//
//  LCWire.m
//  LCUnitTestsExample
//
//  Created by Liyao on 2015/8/9.
//  Copyright (c) 2015年 Liyao. All rights reserved.
//

#import "LCWire.h"

static NSTimeInterval const dayInterval = 60*60*24;
static NSTimeInterval const yearInterval = 60*60*24*30*12;

@interface LCWire ()
@property (strong, nonatomic) NSDate *expiryDate;
@end

@implementation LCWire

- (instancetype)init
{
    if(self = [super init]){

        // 製造日期為 2010/10/10
        NSDateComponents *comps = [[NSDateComponents alloc] init];
        [comps setDay:10];
        [comps setMonth:10];
        [comps setYear:2010];
        NSDate *manufacturedDate = [[NSCalendar currentCalendar] dateFromComponents:comps];
        
        // 有效期限為兩年
        _expiryDate = [manufacturedDate dateByAddingTimeInterval:yearInterval*2];
    }
    return self;
}

- (BOOL)isExpired
{
    return [[NSDate date] timeIntervalSinceReferenceDate] > [self.expiryDate timeIntervalSinceReferenceDate];
}

@end