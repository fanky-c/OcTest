//
//  FourViewController.m
//  页面之间传值
//
//  Created by 赵超 on 2019/4/14.
//  Copyright © 2019 赵超. All rights reserved.
//

#import "FourViewController.h"

@interface FourViewController ()
@property (nonatomic, strong) UITextField* textField;
@property (nonatomic, strong) UIButton* btn;
@end

@implementation FourViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.view.backgroundColor = [UIColor whiteColor];
    
    [self.view addSubview:self.textField];
    [self.view addSubview:self.btn];
}

/*
 #pragma mark - Navigation
 
 // In a storyboard-based application, you will often want to do a little preparation before navigation
 - (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
 // Get the new view controller using [segue destinationViewController].
 // Pass the selected object to the new view controller.
 }
 */

-(UITextField*)textField{
    if(_textField == nil){
        _textField = [[UITextField alloc] initWithFrame:CGRectMake(100, 100, 200, 40)];
        _textField.textColor = [UIColor blackColor];
        _textField.borderStyle = UITextBorderStyleLine;
        [_textField addTarget:self
                       action:@selector(textFieldDidChange:)
             forControlEvents:UIControlEventEditingChanged];
        _textField.text = self.inputText;
    }
    
    return _textField;
}


- (void)textFieldDidChange:(UITextField*)textField{
    self.inputText = textField.text;
}


-(UIButton*)btn{
    if(_btn == nil){
        _btn = [[UIButton alloc] initWithFrame:CGRectMake(100, 300, 200, 40)];
        _btn.backgroundColor = [UIColor redColor];
        [_btn setTitle:@"返回" forState:UIControlStateNormal];
        [_btn setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
        _btn.titleLabel.font = [UIFont systemFontOfSize:20];
        [_btn addTarget:self action:@selector(btnClick) forControlEvents:UIControlEventTouchUpInside];
    }
    return _btn;
}


-(void)btnClick{
    self.block(self.textField.text);
    [self dismissViewControllerAnimated:YES completion:NO];
    
}

@end
