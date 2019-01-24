//
//  VCRoot.m
//  导航栏和工具栏
//
//  Created by 赵超 on 2019/1/24.
//  Copyright © 2019 赵超. All rights reserved.
//

#import "VCRoot.h"
#import "VCSecond.h"

@interface VCRoot ()

@end

@implementation VCRoot

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.view.backgroundColor = [UIColor redColor];
    
    //设置导航栏默认样式
    self.navigationController.navigationBar.barStyle = UIBarStyleBlack;
    
    //是否透明
    self.navigationController.navigationBar.translucent = NO;
    
    //自定义导航栏背景色
    //self.navigationController.navigationBar.barTintColor = [UIColor yellowColor];
    
    //设置导航栏左右按钮样式
    self.navigationController.navigationBar.tintColor = [UIColor redColor];
    
    UIBarButtonItem* rightBtn = [[UIBarButtonItem alloc] initWithTitle:@"下一步" style:UIBarButtonItemStylePlain target:self action:nil];
    
    self.navigationItem.rightBarButtonItem = rightBtn;
    
    self.navigationItem.title = @"根导航";
    
    
    
    //设置工具栏
    self.navigationController.toolbarHidden = NO;
    
    UIBarButtonItem* btn1 = [[UIBarButtonItem alloc] initWithTitle:@"聊天" style:UIBarButtonItemStylePlain target:self action:nil];
    
    UIBarButtonItem* btn2 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemCamera target:self action:@selector(press)];
    
    UIButton* imgageBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    [imgageBtn setImage:[UIImage imageNamed:@"ic_star_hover.png"] forState:UIControlStateNormal];
    imgageBtn.frame = CGRectMake(0, 0, 40, 40);
    imgageBtn.backgroundColor = [UIColor blackColor];
    
    UIBarButtonItem* btn3 = [[UIBarButtonItem alloc] initWithCustomView:imgageBtn];
    
    //固定大小
    //UIBarButtonItem* btnF1 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemFixedSpace target:self action:nil];
    //btnF1.width = 100;
    
    UIBarButtonItem* btnF1 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemFlexibleSpace target:self action:nil];
    
    NSArray* arrBtn = [NSArray arrayWithObjects:btn1,btnF1,btn2,btnF1,btn3, nil];
    
    self.toolbarItems = arrBtn;
    
}

- (void)press{
    [self.navigationController pushViewController:[[VCSecond alloc] init] animated:YES];
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
