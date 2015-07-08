//
//  ViewController.m
//  LCUnitTestsExample
//
//  Created by Liyao on 2015/6/19.
//  Copyright (c) 2015年 Liyao. All rights reserved.
//

#import "ViewController.h"
#import "LCRoom.h"


@interface ViewController ()
@property (strong, nonatomic) LCRoom *room;
@end

@implementation ViewController

- (void)loadView
{
    [super loadView];
    self.room = [[LCRoom alloc] initWithLight:YES];
}

- (IBAction)turnOn:(id)sender
{
    [self.room turnOnLight];
    if(self.room.isLight){
        
    }
    else{
        
    }
}

- (IBAction)turnOff:(id)sender
{
    // TODO:
}

@end
