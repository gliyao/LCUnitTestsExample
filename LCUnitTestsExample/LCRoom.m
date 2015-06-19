//
//  LCRoom.m
//  LCUnitTestsExample
//
//  Created by Liyao on 2015/6/19.
//  Copyright (c) 2015年 Liyao. All rights reserved.
//

#import "LCRoom.h"

@implementation LCRoom

- (instancetype)initWithLight:(BOOL)isLight
{
    if(self = [super init]){
        _isLight = isLight;
    }
    return self;
}

- (void)openLight
{
    if(_isLight){
        return;
    }
    _isLight = YES;
}

- (void)closeLight
{
    if(!_isLight){
        return;
    }
    _isLight = NO;
}

@end
