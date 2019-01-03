//
//  ViewController.m
//  UIButtonEvent
//
//  Created by 赵超 on 2019/1/3.
//  Copyright © 2019 赵超. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

-(void) createBtn{
    UIButton * btn = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    
    btn.frame = CGRectMake(100, 100, 100, 40);
    
    [btn setTitle:@"点击" forState:UIControlStateNormal];
    
    //p1:谁来实现函数. 现在的self==ViewController
    [btn addTarget:self action:@selector(pressBtn:) forControlEvents:UIControlEventTouchUpInside];
    
    [btn addTarget:self action:@selector(touchDown) forControlEvents:UIControlEventTouchDown];
    
    [self.view addSubview:btn];
    
    
    UIButton * btn1 = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    
    [btn1 setTitle:@"按钮2" forState:UIControlStateNormal];
    
    btn1.frame = CGRectMake(100, 200, 80, 40);
    
    [btn1 addTarget:self action:@selector(pressBtn:) forControlEvents:UIControlEventTouchUpInside];
    
    [self.view addSubview:btn1];
    
    //设置button标识符
    btn.tag = 0;
    btn1.tag = 1;
}


//带参数的事件回调
-(void) pressBtn:(UIButton *) btn{
    if(btn.tag == 0){
       NSLog(@"btn press!");
    }
    if(btn.tag == 1){
       NSLog(@"btn1 press!");
    }

}

-(void) pressBtn{
    NSLog(@"按钮被按下!");
}

-(void) touchDown{
    NSLog(@"touch down");
}



- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    [self createBtn];
}


@end
