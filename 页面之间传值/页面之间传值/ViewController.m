//
//  ViewController.m
//  页面之间传值
//
//  Created by 赵超 on 2019/4/8.
//  Copyright © 2019 赵超. All rights reserved.
//

#import "ViewController.h"
#import "NextViewController.h"
#import "ThirdViewController.h"
#import "SharedInstance.h"
#import "ThirdViewController.h"
#import "FourViewController.h"
#import "FiveViewController.h"

@interface ViewController ()<passValueDelegate>  //遵守协议
@property (nonatomic, strong) UILabel* lable;
@property (nonatomic, strong) UIButton* btn;
@property (nonatomic, strong) UIButton* btn1;
@property (nonatomic, strong) UIButton* btn2;
@property (nonatomic, strong) UIButton* btn3;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    
    //添加到当前的视图中
    [self.view addSubview:self.lable];
    [self.view addSubview:self.btn];
    [self.view addSubview:self.btn1];
    [self.view addSubview:self.btn2];
    [self.view addSubview:self.btn3];
    
}

//单例传值
//-(void) viewWillAppear:(BOOL)animated{
//    [super viewWillAppear:YES];
//    _lable.text = [SharedInstance sharedInstance].str;
//}

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
        [_btn setTitle:@"属性和单例传值" forState:UIControlStateNormal];
        [_btn setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
        [_btn addTarget:self action:@selector(btnChange) forControlEvents:UIControlEventTouchUpInside];
    }
    return _btn;
}

-(UIButton*)btn1{
    if(!_btn1){
        _btn1 = [[UIButton alloc] initWithFrame:CGRectMake(100, 360, 200, 40)];
        _btn1.backgroundColor = [UIColor redColor];
        [_btn1 setTitle:@"协议传值" forState:UIControlStateNormal];
        [_btn1 setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
        [_btn1 addTarget:self action:@selector(btnChange1) forControlEvents:UIControlEventTouchUpInside];
    }
    return _btn1;
}


-(UIButton*)btn2{
    if(!_btn2){
        _btn2 = [[UIButton alloc] initWithFrame:CGRectMake(100, 420, 200, 40)];
        _btn2.backgroundColor = [UIColor redColor];
        [_btn2 setTitle:@"block传值" forState:UIControlStateNormal];
        [_btn2 setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
        [_btn2 addTarget:self action:@selector(btnChange2) forControlEvents:UIControlEventTouchUpInside];
    }
    return _btn2;
}


-(UIButton*)btn3{
    if(!_btn3){
        _btn3 = [[UIButton alloc] initWithFrame:CGRectMake(100, 480, 260, 40)];
        _btn3.backgroundColor = [UIColor redColor];
        [_btn3 setTitle:@"NSNotificationCenter传值" forState:UIControlStateNormal];
        [_btn3 setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
        [_btn3 addTarget:self action:@selector(btnChange3) forControlEvents:UIControlEventTouchUpInside];
    }
    return _btn3;
}


-(void)btnChange{
    NextViewController* nextView = [[NextViewController alloc] init];
    
    //更新视图二属性
    nextView.inputText= @"测试传值";
    [self presentViewController:nextView animated:YES completion:nil];
}


-(void)btnChange1{
    ThirdViewController* thirdView = [[ThirdViewController alloc] init];
    
    //设置代理关系
    thirdView.delegate = self;
    
    [self presentViewController:thirdView animated:YES completion:nil];
}

-(void)btnChange2{
    FourViewController* fourView = [[FourViewController alloc] init];
    
    //block回调
    fourView.block = ^(NSString* str){
         self.lable.text = str;
    };
    
    [self presentViewController:fourView animated:YES completion:nil];
}


-(void)btnChange3{
    FiveViewController* fiveView = [[FiveViewController alloc] init];
    
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(updateValue:) name:@"postValue" object:nil];
    
    [self presentViewController:fiveView animated:YES completion:nil];
}


-(void)updateValue:(NSNotification*)not{
    self.lable.text = not.userInfo[@"val"];
}



//实现协议方法
-(void) passValue:(NSString *)val{
    self.lable.text = val;
}


@end
