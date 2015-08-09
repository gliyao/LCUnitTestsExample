//
//  LCRoom.h
//  LCUnitTestsExample
//
//  Created by Liyao on 2015/6/19.
//  Copyright (c) 2015年 Liyao. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "LCWire.h"

@interface LCRoom : NSObject
@property (assign, nonatomic, readonly) BOOL isLight;
- (instancetype)initWithLight:(BOOL)isLight wire:(id<Expirable>)wire;
- (void)turnOnLight;
- (void)turnOffLight;
@end
