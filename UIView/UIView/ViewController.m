//
//  ViewController.m
//  UIView
//
//  Created by 赵超 on 2019/1/3.
//  Copyright © 2019 赵超. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

-(void) createView{
    UIView *view = [[UIView alloc] init];
    
    view.frame = CGRectMake(100, 100, 100, 200);
    
    view.backgroundColor = [UIColor redColor];

    //设置视图的透明度
    view.alpha = .5;
    
    //是否设置不透明度
    view.opaque = YES;
    
    //隐藏视图对象
    view.hidden = NO;
    
    //将新建的视图(view)添加到父视图（self.view）
    [self.view addSubview:view];
    
    //将自己从父视图中移除
    //[view removeFromSuperview];
    
    
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    [self createView];
}


@end
