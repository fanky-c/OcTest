//
//  ViewController.m
//  UIView视图层级
//
//  Created by 赵超 on 2019/1/4.
//  Copyright © 2019 赵超. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController


- (void) createView{
    //创建多个view
    UIView * view01 = [[UIView alloc] init];
    view01.frame = CGRectMake(100, 100, 100, 100);
    view01.backgroundColor = [UIColor redColor];
    
    UIView * view02 = [[UIView alloc] init];
    view02.frame = CGRectMake(110, 110, 100, 100);
    view02.backgroundColor = [UIColor yellowColor];
    
    UIView *view03 = [[UIView alloc] init];
    view03.frame = CGRectMake(120, 120, 100, 100);
    view03.backgroundColor = [UIColor blueColor];
    
    //添加到当前视图上
    [self.view addSubview:view01];
    [self.view addSubview:view02];
    [self.view addSubview:view03];
    
    //将某个视图调整到最前面显示
    //[self.view bringSubviewToFront:view01];
    
    //将耨个视图调整到最后显示
    //[self.view sendSubviewToBack:view03];
    
    
    //subview管理所有父视图（self.view）子视图的数组
    UIView *viewFront = self.view.subviews[2];
    if(view03 == viewFront){
        NSLog(@"相等！");
    }
    
    //superview是当前视图的父视图，是唯一。
    UIView *_self = view01.superview;
    if(self.view == _self){
        NSLog(@"相等！！！");
    }
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    [self createView];
}


@end
