//
//  ViewController.m
//  UIViewController基础二
//
//  Created by 赵超 on 2019/1/5.
//  Copyright © 2019 赵超. All rights reserved.
//

#import "ViewController.h"
#import "VC2.h"

@interface ViewController ()

@end

@implementation ViewController


//点击屏幕调用此函数
-(void) touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    VC2 * Vc = [[VC2 alloc] init];
    
    //presentViewController:显示那个view
    //animated：是否有动画效果
    //completion:完成此功能的回调
    [self presentViewController:Vc animated:YES completion:nil];
}

//第一次加载
//只会加载一次
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    self.view.backgroundColor = [UIColor redColor];
    
    NSLog(@"viewDidLoad");
}


//视图即将显示
//每一次视图显示都会调用
-(void) viewWillAppear:(BOOL)animated{
    NSLog(@"viewWillAppear");
}

//视图已经显示
-(void) viewDidAppear:(BOOL)animated{
     NSLog(@"viewDidAppear");
    
}

//视图即将隐藏
-(void) viewWillDisappear:(BOOL)animated{
     NSLog(@"viewWillDisappear");
}


//视图已经隐藏
-(void) viewDidDisappear:(BOOL)animated{
     NSLog(@"viewDidDisappear");
}

//内存低警告
-(void) didReceiveMemoryWarning{
    [super didReceiveMemoryWarning];
    NSLog(@"内存即将用完！！！");
}

@end
