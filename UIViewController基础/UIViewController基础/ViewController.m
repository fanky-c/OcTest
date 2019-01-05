//
//  ViewController.m
//  UIViewController基础
//
//  Created by 赵超 on 2019/1/5.
//  Copyright © 2019 赵超. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController


//当视图控制器第一次被加载显示视图时候，调用此函数
//布局初始化和词源加载使用
- (void)viewDidLoad {
    
    //调用父类加载视图函数
    [super viewDidLoad];
    
    // Do any additional setup after loading the view, typically from a nib.
    
    UIView * view = [[UIView alloc] initWithFrame:CGRectMake(100, 100, 100, 200)];    
    
    view.backgroundColor = [UIColor redColor];
    
    self.view.backgroundColor = [UIColor blueColor];
    
    //讲当前的视图添加到当前控制视图桑
    [self.view addSubview:view];
    
}


@end
