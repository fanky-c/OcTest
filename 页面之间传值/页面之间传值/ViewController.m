//
//  ViewController.m
//  页面之间传值
//
//  Created by 赵超 on 2019/4/8.
//  Copyright © 2019 赵超. All rights reserved.
//

#import "ViewController.h"
#import "NextViewController.h"
#import "SharedInstance.h"

@interface ViewController ()
@property (nonatomic, strong) UILabel* lable;
@property (nonatomic, strong) UIButton* btn;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    
    //添加到当前的视图中
    [self.view addSubview:self.lable];
    [self.view addSubview:self.btn];
    
}

-(void) viewWillAppear:(BOOL)animated{
    [super viewWillAppear:YES];
    _lable.text = [SharedInstance sharedInstance].str;
}

-(UILabel*)lable{
    if(_lable == nil){
        _lable = [[UILabel alloc] initWithFrame:CGRectMake(100, 100, 200, 40)];
        _lable.backgroundColor = [UIColor blackColor];
        _lable.textColor = [UIColor whiteColor];
        _lable.font = [UIFont systemFontOfSize:20];
    }
    return _lable;
}


-(UIButton*)btn{
    if(_btn == nil){
        _btn = [[UIButton alloc] initWithFrame:CGRectMake(100, 300, 200, 40)];
        _btn.backgroundColor = [UIColor redColor];
        [_btn setTitle:@"跳转页面2" forState:UIControlStateNormal];
        [_btn setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
        [_btn addTarget:self action:@selector(btnChange) forControlEvents:UIControlEventTouchUpInside];
    }
    return _btn;
}


-(void)btnChange{
    NextViewController* nextView = [[NextViewController alloc] init];
    
    //更新视图二属性
    nextView.inputText= @"测试传值";
    [self presentViewController:nextView animated:YES completion:nil];
}




@end
