//
//  ViewController.m
//  UILable
//
//  Created by 赵超 on 2019/1/3.
//  Copyright © 2019 赵超. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void) creatUILabel{
    //创建Label
    UILabel * Label = [[UILabel alloc] init];
    
    //设置文字
    Label.text = @"hello world! i love you";
    
    //设置文字大小
    Label.font = [UIFont systemFontOfSize:14];
    
    //设置文字颜色
    Label.textColor = [UIColor blueColor];
    
    //设置文字阴影
    Label.shadowColor = [UIColor grayColor];
    Label.shadowOffset = CGSizeMake(3, 3);
    
    //设置文字在矩形中的对齐位置
    Label.textAlignment = NSTextAlignmentCenter;
    
    //设置位置
    Label.frame = CGRectMake(200, 100, 100, 50);
    
    //设置自动换行,默认为1,0按需要显示行数
    Label.numberOfLines = 0;
    
    //设置背景色,clearColor(透明色)
    Label.backgroundColor = [UIColor whiteColor];
    
    //当前视图的背景色
    self.view.backgroundColor = [UIColor grayColor];
    
    //将Label添加到屏幕视图
    [self.view addSubview:Label];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    [self creatUILabel];
}


@end
