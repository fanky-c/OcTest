//
//  ViewController.m
//  UIAlert和UIActivityIndicator
//
//  Created by 赵超 on 2019/1/8.
//  Copyright © 2019 赵超. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

//同步属性和成员变量
@synthesize alertView = _alertView;
@synthesize activityIndicator = _activityIndicator;


- (void) createAlert{
    _alertView = [UIAlertController alertControllerWithTitle:@"提示" message:@"成功" preferredStyle:UIAlertControllerStyleAlert];
    // UIAlertControllerStyleActionSheet 是显示在屏幕底部
    // UIAlertControllerStyleAlert 是显示在中间

    // 设置按钮
    UIAlertAction *cancel=[UIAlertAction actionWithTitle:@"取消" style:UIAlertActionStyleCancel handler:nil];
    UIAlertAction *defult = [UIAlertAction actionWithTitle:@"确定" style:UIAlertActionStyleDefault handler:nil];
    UIAlertAction *destructive = [UIAlertAction actionWithTitle:@"我是内容" style:UIAlertActionStyleDestructive handler:nil];
    
    [_alertView addAction:cancel];
    [_alertView addAction:defult];
    
    
    [self presentViewController:_alertView animated:YES completion:nil];
    
}


-(void) createActivity{
    _activityIndicator = [[UIActivityIndicatorView alloc] initWithFrame:CGRectMake(150, 300, 100, 100)];
    
    //设置loading的样式
    _activityIndicator.activityIndicatorViewStyle = UIActivityIndicatorViewStyleGray;
    
    //添加到当前的view
    [self.view addSubview:_activityIndicator];
    
    //开启显示loading
    [_activityIndicator startAnimating];
    
    
    //延迟关闭显示Loading
    [NSTimer scheduledTimerWithTimeInterval:2 target:self selector:@selector(stopAnimating) userInfo:nil repeats:NO];
    

}

-(void) stopAnimating{
   [_activityIndicator stopAnimating];
}


- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    [self createAlert];
    [self createActivity];
}


@end
