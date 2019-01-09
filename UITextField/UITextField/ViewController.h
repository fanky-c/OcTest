//
//  ViewController.h
//  UITextField
//
//  Created by 赵超 on 2019/1/9.
//  Copyright © 2019 赵超. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController<UITextFieldDelegate>
{
    //单行文本输入框
    UITextField * _textField;
}

@property (retain, nonatomic) UITextField * textField;

@end

