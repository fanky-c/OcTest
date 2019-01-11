//
//  ViewController.m
//  手动布局
//
//  Created by 赵超 on 2019/1/10.
//  Copyright © 2019 赵超. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController


@synthesize btn1 = _btn1;
@synthesize btn2 = _btn2;


//创建操作按钮
- (void) createBtn{
    
    //创建放大按钮
    _btn1 = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    [_btn1 setTitle:@"放大" forState:UIControlStateNormal];
    _btn1.frame = CGRectMake(self.view.bounds.size.width - 100,self.view.bounds.size.height - 60, 100, 40);
    [_btn1 addTarget:self action:@selector(pressLarger) forControlEvents:UIControlEventTouchUpInside];
    
    //创建缩小按钮
    _btn2 = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    [_btn2 setTitle:@"缩小" forState:UIControlStateNormal];
    _btn2.frame = CGRectMake(self.view.bounds.size.width - 100,self.view.bounds.size.height - 100, 100, 40);
    [_btn2 addTarget:self action:@selector(pressSmall) forControlEvents:UIControlEventTouchUpInside];
    
    [self.view addSubview:_btn1];
    [self.view addSubview:_btn2];
}

- (void) pressLarger{
    SuperView* sView = (SuperView*)[self.view viewWithTag:101];
    [UIView beginAnimations:nil context:nil];
    [UIView setAnimationDuration:1];
    sView.frame = CGRectMake(20, 50, 300, 480);
    [UIView commitAnimations];
}

- (void) pressSmall{
    SuperView* sView = (SuperView*)[self.view viewWithTag:101];
    [UIView beginAnimations:nil context:nil];
    [UIView setAnimationDuration:1];
    sView.frame = CGRectMake(20, 50, 180, 200);
    [UIView commitAnimations];
}

//创建大的画布
- (void) createCanva{
    SuperView* sView = [[SuperView alloc] init];
    sView.frame = CGRectMake(20, 50, 180, 200);
    sView.backgroundColor = [UIColor yellowColor];
    [sView createSubView];
    [self.view addSubview:sView];
    
    sView.tag = 101;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    [self createCanva];
    [self createBtn];
}


@end
