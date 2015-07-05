//
//  ViewController.m
//  LCUnitTestsExample
//
//  Created by Liyao on 2015/6/19.
//  Copyright (c) 2015年 Liyao. All rights reserved.
//

#import "ViewController.h"
#import "LCCalculator.h"

@interface ViewController ()

@end

@implementation ViewController

- (IBAction)test:(id)sender
{
    LCCalculator *calculator = [[LCCalculator alloc] init];
    NSNumber *a = @10;
    NSNumber *b = @5;
    NSNumber *result = [calculator sumWithA:a andB:b];
    NSLog(@"%@", result);
    
    if([result isEqualToNumber:@15]){
        
    }
    else{
        
    }
}

@end
