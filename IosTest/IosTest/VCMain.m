//
//  VCMain.m
//  Xib
//
//  Created by 赵超 on 2019/1/2.
//  Copyright © 2019 赵超. All rights reserved.
//

#import "VCMain.h"

@interface VCMain ()

@end

@implementation VCMain

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (IBAction)login:(UIButton *)sender {
    
    NSString * _username = @"zhaochao";
    NSString * _pwd = @"123456";
    
    
    if([_mTfUsername.text isEqual:_username] && [_mTfPassword.text isEqual:_pwd]){
        UIAlertView * alert = [[UIAlertView alloc] initWithTitle:@"提示" message:@"用户密码正确,登录成功！" delegate:nil cancelButtonTitle:@"ok" otherButtonTitles:@"取消", nil];
        [alert show];
    }else{
        UIAlertView * alert = [[UIAlertView alloc] initWithTitle:@"提示" message:@"用户密码不正确,登录失败！" delegate:nil cancelButtonTitle:@"ok" otherButtonTitles:@"取消", nil];
        [alert show];
    }
    
}

- (IBAction)reg:(UIButton *)sender {
    
    
}
@end
