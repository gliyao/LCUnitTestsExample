//
//  Expirable.h
//  LCUnitTestsExample
//
//  Created by Liyao on 2015/8/9.
//  Copyright (c) 2015年 Liyao. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol Expirable <NSObject>
- (BOOL)isExpired;
@end
