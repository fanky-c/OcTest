//
//  ViewController.m
//  UISwitch
//
//  Created by 赵超 on 2019/1/7.
//  Copyright © 2019 赵超. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController


//属性和成员变量
@synthesize mySwitch = _mySwith;


//创建Switch
- (void) createSwitch{
    _mySwith = [[UISwitch alloc] init];
    
    //switch的宽高是无法改变的
    _mySwith.frame = CGRectMake(100, 100, 80, 40);
    
    [_mySwith setOn:YES animated:YES];
    
    [_mySwith addTarget:self action:@selector(swChange:) forControlEvents:UIControlEventValueChanged];
    
    [self.view addSubview:_mySwith];
}


- (void) swChange:(UISwitch*) sw{
    if(sw.on == YES){
        NSLog(@"按钮打开");
    }else{
        NSLog(@"按钮关闭");
    }
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    [self createSwitch];
}


@end
