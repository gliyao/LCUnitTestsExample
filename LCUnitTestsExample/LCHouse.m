//
//  LCHouse.m
//  LCUnitTestsExample
//
//  Created by Liyao on 2015/7/5.
//  Copyright (c) 2015年 Liyao. All rights reserved.
//

#import "LCHouse.h"
#import "LCRoom.h"

@interface LCHouse()
@property (strong, nonatomic) NSArray *roooms;
@end

@implementation LCHouse

- (instancetype)initWithRooms:(NSArray *)rooms
{
    if(self = [super init]){
        _roooms = rooms;
    }
    return self;
}

- (void)turnOffHouseLight
{
    if ([self.roooms count] > 0) {
        
        [self.roooms enumerateObjectsUsingBlock:^(LCRoom *room, NSUInteger idx, BOOL *stop) {
            [room turnOffLight];
        }];
    }
}

@end
