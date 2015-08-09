//
//  LCWire.h
//  LCUnitTestsExample
//
//  Created by Liyao on 2015/8/9.
//  Copyright (c) 2015年 Liyao. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Expirable.h"
@interface LCWire : NSObject <Expirable>
- (BOOL)isExpired;
@end
