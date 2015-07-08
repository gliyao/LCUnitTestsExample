//
//  LCRoom.m
//  LCUnitTestsExample
//
//  Created by Liyao on 2015/6/19.
//  Copyright (c) 2015年 Liyao. All rights reserved.
//

#import "LCRoom.h"

@implementation LCRoom

- (instancetype)init
{
    if(self = [super init]){
        _isLight = NO;
    }
    return self;
}

- (instancetype)initWithLight:(BOOL)isLight
{
    if(self = [super init]){
        _isLight = isLight;
    }
    return self;
}

- (void)turnOnLight
{
    if(_isLight){
        return;
    }
    _isLight = YES;
}

- (void)turnOffLight
{
    if(!_isLight){
        return;
    }
    _isLight = NO;
}

@end
