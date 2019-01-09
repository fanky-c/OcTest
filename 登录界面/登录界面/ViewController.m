//
//  ViewController.m
//  登录界面
//
//  Created by 赵超 on 2019/1/9.
//  Copyright © 2019 赵超. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void) createView{
    //创建用户名
    _lbUserName = [[UILabel alloc] init];
    _lbUserName.frame = CGRectMake(20, 100, 80, 40);
    _lbUserName.text = @"用户名";
    _lbUserName.font = [UIFont systemFontOfSize:14];
    _lbUserName.textAlignment = NSTextAlignmentLeft;
    
    //创建密码
    _lbPassword = [[UILabel alloc] init];
    _lbPassword.frame = CGRectMake(20, 190, 80, 40);
    _lbPassword.text = @"密码";
    _lbPassword.font = [UIFont systemFontOfSize:14];
    _lbPassword.textAlignment = NSTextAlignmentLeft;
    
    //用户名输入
    _tfUserName = [[UITextField alloc] init];
    _tfUserName.frame = CGRectMake(120, 100, 180, 40);
    _tfUserName.placeholder = @"请输入用户名";
    _tfUserName.borderStyle = UITextBorderStyleRoundedRect;
    
    
    //密码输入
    _tfPassword = [[UITextField alloc] init];
    _tfPassword.frame = CGRectMake(120, 190, 180, 40);
    _tfPassword.placeholder = @"请输入密码";
    _tfPassword.secureTextEntry = YES;
    _tfPassword.borderStyle = UITextBorderStyleRoundedRect;
    
    
    //登录按钮
    _btLogin = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    _btLogin.frame = CGRectMake(120, 350, 80, 40);
    [_btLogin setTitle:@"登录" forState:UIControlStateNormal];
    [_btLogin addTarget:self action:@selector(login) forControlEvents:UIControlEventTouchUpInside];
    
    //注册按钮
    _btRegister = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    _btRegister.frame = CGRectMake(120, 410, 80, 40);
    [_btRegister setTitle:@"注册" forState:UIControlStateNormal];
    [_btRegister addTarget:self action:@selector(register) forControlEvents:UIControlEventTouchUpInside];
    
    
    [self.view addSubview:_tfUserName];
    [self.view addSubview:_tfPassword];
    [self.view addSubview:_lbUserName];
    [self.view addSubview:_lbPassword];
    [self.view addSubview:_btLogin];
    [self.view addSubview:_btRegister];
}

- (void) touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    [_tfUserName resignFirstResponder];
    [_tfPassword resignFirstResponder];
}

- (void) login{
    NSString * strUserName = @"chao";
    NSString * strPwd = @"123456";
    NSString * _strUserName = _tfUserName.text;
    NSString * _strPwd = _tfPassword.text;
    
    if([strUserName isEqualToString:_strUserName] && [strPwd isEqualToString:_strPwd]){
        NSLog(@"登录成功");
    }else{
        NSLog(@"登录失败");
    }
}

- (void) register{
    
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    [self createView];
}


@end
