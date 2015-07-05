//
//  ViewController.m
//  LCUnitTestsExample
//
//  Created by Liyao on 2015/6/19.
//  Copyright (c) 2015年 Liyao. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (IBAction)test:(id)sender
{
    double salaryPerHours = 103;
    double overtimeSalaryPerHours = salaryPerHours * 1.66;
    double liyaoSalary = (salaryPerHours * 8) + (overtimeSalaryPerHours * 2);
    NSLog(@"%f", liyaoSalary);
}

@end
