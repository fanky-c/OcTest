//
//  ViewController.h
//  登录界面
//
//  Created by 赵超 on 2019/1/9.
//  Copyright © 2019 赵超. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

{
    //用户名
    UILabel * _lbUserName;
    
    //密码
    UILabel * _lbPassword;
    
    //用户名输入框
    UITextField * _tfUserName;
    
    //密码输入框
    UITextField * _tfPassword;
    
    //登录
    UIButton * _btLogin;
    
    //注册
    UIButton * _btRegister;
    
}

@end

