//
//  ViewController.m
//  Timer和视图移动
//
//  Created by 赵超 on 2019/1/7.
//  Copyright © 2019 赵超. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

//属性和成员变量同步
@synthesize timerView = _timerView;

//创建view
- (void) createView{
    UIButton *btn1 = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    [btn1 setTitle:@"开始定时器" forState:UIControlStateNormal];
    btn1.frame = CGRectMake(150, 100, 80, 40);
    [btn1 addTarget:self action:@selector(pressStart) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn1];
    
    
    
    UIButton *btn2 = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    [btn2 setTitle:@"结束定时器" forState:UIControlStateNormal];
    btn2.frame = CGRectMake(150, 200, 80, 40);
    [btn2 addTarget:self action:@selector(pressEnd) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn2];
    
    
    UIView *view = [[UIView alloc] init];
    view.frame = CGRectMake(10, 20, 50, 50);
    view.backgroundColor = [UIColor redColor];
    [self.view addSubview:view];
    //tag最好从100开始
    view.tag = 100;
}

//更新定时器
- (void) updateTimer:(NSTimer*) timer{
    UIView *view = [self.view viewWithTag:100];
    view.frame = CGRectMake(view.frame.origin.x+1, view.frame.origin.y+1, view.frame.size.width, view.frame.size.height);
    NSLog(@"%@", timer.userInfo);
}

//开始按钮
- (void) pressStart{
    _timerView = [NSTimer scheduledTimerWithTimeInterval:0.01 target:self selector:@selector(updateTimer:) userInfo:@"我是参数" repeats:YES];
}

//停止按钮,清除定时器
- (void) pressEnd{
    if(_timerView != nil){
         [_timerView invalidate];
    }
}


- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    [self createView];
}


@end
