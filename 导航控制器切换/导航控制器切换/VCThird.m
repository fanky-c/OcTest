//
//  VCThird.m
//  导航控制器切换
//
//  Created by 赵超 on 2019/1/23.
//  Copyright © 2019 赵超. All rights reserved.
//

#import "VCThird.h"

@interface VCThird ()

@end

@implementation VCThird

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.view.backgroundColor = [UIColor blueColor];
    
    self.navigationItem.title = @"第三导航";
    
    UIBarButtonItem* leftBtn = [[UIBarButtonItem alloc] initWithTitle:@"返回" style:UIBarButtonItemStylePlain target:self action:@selector(pressBack)];
    
    self.navigationItem.leftBarButtonItem = leftBtn;
    
    
    UIBarButtonItem* rightBtn = [[UIBarButtonItem alloc] initWithTitle:@"返回根视图" style:UIBarButtonItemStylePlain target:self action:@selector(pressRoot)];
    
    self.navigationItem.rightBarButtonItem = rightBtn;
}


- (void) pressBack{
    [self.navigationController popViewControllerAnimated:YES];
}

- (void) pressRoot{
    [self.navigationController popToRootViewControllerAnimated:YES];
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
