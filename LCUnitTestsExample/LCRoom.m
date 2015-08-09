//
//  LCRoom.m
//  LCUnitTestsExample
//
//  Created by Liyao on 2015/6/19.
//  Copyright (c) 2015年 Liyao. All rights reserved.
//

#import "LCRoom.h"


@interface LCRoom()
@property (strong, nonatomic) id<Expirable> wire;
@end

@implementation LCRoom

- (instancetype)initWithLight:(BOOL)isLight wire:(id<Expirable>)wire
{
    if(self = [super init]){
        _wire = wire;
        self.isLight = isLight;
    }
    return self;
}

- (void)setIsLight:(BOOL)isLight
{
    // 如果電線過期，燈就不會亮
    if(self.wire.isExpired){
        _isLight = NO;
        return;
    }
    
    if(_isLight == isLight){
        return;
    }
    
    _isLight = isLight;
}

// 開燈
- (void)turnOnLight
{
    if(_isLight){
        return;
    }
    
    self.isLight = YES;
}

// 關燈
- (void)turnOffLight
{
    if(!_isLight){
        return;
    }
    
    self.isLight = NO;
}

@end
