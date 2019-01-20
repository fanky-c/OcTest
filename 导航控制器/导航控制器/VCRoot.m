//
//  VCRoot.m
//  导航控制器
//
//  Created by 赵超 on 2019/1/20.
//  Copyright © 2019 赵超. All rights reserved.
//

#import "VCRoot.h"

@interface VCRoot ()

@end

@implementation VCRoot

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.view.backgroundColor = [UIColor yellowColor];
    
    //左按钮
    self.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemReply target:self action:@selector(back)];
    
    //标题
    //self.title = @"设置";
    self.navigationItem.title =@"设置";
    
    
    
    //右按钮
    UILabel* label = [[UILabel alloc] init];
    label.text = @"前进";
    label.frame = CGRectMake(0, 0, 80, 40);
    label.textAlignment = NSTextAlignmentCenter;
    //给lablet添加添加事件
    UITapGestureRecognizer *labelTapGestureRecognizer = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(clickLable)];
    [label addGestureRecognizer:labelTapGestureRecognizer];
    label.userInteractionEnabled = YES;

    UIBarButtonItem* backBtn = [[UIBarButtonItem alloc] initWithCustomView:label];
    
    UIBarButtonItem* backBtn1 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemCamera target:self action:@selector(go)];
    
    NSArray* arrBtn = [NSArray arrayWithObjects:backBtn1, backBtn, nil];
    
    //右边按钮多个标签
    self.navigationItem.rightBarButtonItems = arrBtn;
    
    //右边按钮单个标签
    //self.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc] initWithTitle:@"前进" style:UIBarButtonItemStyleDone target:self action:@selector(go)];
    
    
}


- (void) back{
    NSLog(@"后退");
}

- (void) go{
    NSLog(@"前进");
}

- (void) clickLable{
    NSLog(@"lable");
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
