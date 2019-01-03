//
//  ViewController.m
//  UIButton
//
//  Created by 赵超 on 2019/1/3.
//  Copyright © 2019 赵超. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController


- (void) createRectButton{
    //只能通过类方法创建，不能通过实例方法。uibutton自己管理自己的内存
    UIButton * Btn = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    
    //设置位置
    Btn.frame = CGRectMake(100, 100, 100, 40);
    
    
    //按钮背景色
    Btn.backgroundColor = [UIColor grayColor];
    
    
    //设置字体大小
    Btn.titleLabel.font = [UIFont systemFontOfSize:16];
    
    //设置按钮状态和内容
    //默认状态
    [Btn setTitle:@"按钮" forState:UIControlStateNormal];
    [Btn setTitleColor:[UIColor redColor] forState:UIControlStateNormal];
    
    //按下状态
    [Btn setTitle:@"按下" forState:UIControlStateHighlighted];
    [Btn setTitleColor:[UIColor blueColor] forState:UIControlStateHighlighted];

    
    //显示按钮
    [self.view addSubview:Btn];
    
    
}


-(void) createImageBtn{
    UIButton * Btn = [UIButton buttonWithType:UIButtonTypeCustom];
    
    Btn.frame = CGRectMake(100, 200, 100, 40);
    
    UIImage * icon1 = [UIImage imageNamed:@"ic_scene.png"];
    UIImage * icon2 = [UIImage imageNamed:@"ic_screen.png"];
    
    [Btn setImage:icon1 forState:UIControlStateNormal];
    [Btn setImage:icon2 forState:UIControlStateHighlighted];
    
    [self.view addSubview:Btn];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    [self createRectButton];
    
    [self createImageBtn];
}


@end
