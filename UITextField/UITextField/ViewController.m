//
//  ViewController.m
//  UITextField
//
//  Created by 赵超 on 2019/1/9.
//  Copyright © 2019 赵超. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

@synthesize textField = _textField;


- (void) createTextField {
   
    _textField = [[UITextField alloc] init];
    
    _textField.frame = CGRectMake(100, 100, 180, 40);
    
    //_textField.text = @"hi";
    
    _textField.placeholder = @"请输入文本...";
    
    _textField.textColor = [UIColor blackColor];
    
    _textField.font = [UIFont systemFontOfSize:14];
    
    //边框的风格
    _textField.borderStyle = UITextBorderStyleRoundedRect;
    
    //是否是密码输入框
    _textField.secureTextEntry = NO;
    
    //设置虚拟键盘风格
    //UIKeyboardTypeDefault
    _textField.keyboardType = UIKeyboardTypeDefault;
    
    [self.view addSubview:_textField];
    
    
    //绑定事件代理
    _textField.delegate = self;
    
}


- (void) textFieldDidBeginEditing:(UITextField *)textField{
     NSLog(@"开始编辑");
}


- (void) textFieldDidEndEditing:(UITextField *)textField{
    //_textField.text = @"";
    NSLog(@"结束编辑");
}

//能否输入
- (BOOL) textFieldShouldBeginEditing:(UITextField *)textField{
    return YES;
}

//能否结束
- (BOOL) textFieldShouldEndEditing:(UITextField *)textField{
    return YES;
}

//点击空白区域关闭键盘
- (void) touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    
    //放弃第一次响应，也就关掉虚拟键盘
    [_textField resignFirstResponder];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    [self createTextField];
}


@end
