//
//  ViewController.m
//  自动布局
//
//  Created by 赵超 on 2019/1/13.
//  Copyright © 2019 赵超. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void) createView{
    
    //父视图
    _superView = [[UIView alloc] init];
    _superView.frame = CGRectMake(10, 40, 300, 400);
    _superView.backgroundColor = [UIColor redColor];
    
    //左上
    _lb1 = [[UILabel alloc] init];
    _lb1.frame = CGRectMake(0, 0, 40, 40);
    _lb1.text = @"左上";
    _lb1.textAlignment = NSTextAlignmentCenter;
    _lb1.backgroundColor = [UIColor yellowColor];
    
    //左下
    _lb2 = [[UILabel alloc] init];
    _lb2.frame = CGRectMake(0, _superView.bounds.size.height-40, 40, 40);
    _lb2.text = @"左下";
    _lb2.textAlignment = NSTextAlignmentCenter;
    _lb2.backgroundColor = [UIColor yellowColor];
    
    //右上
    _lb3 = [[UILabel alloc] init];
    _lb3.frame = CGRectMake(_superView.bounds.size.width - 40, 0, 40, 40);
    _lb3.text = @"右上";
    _lb3.textAlignment = NSTextAlignmentCenter;
    _lb3.backgroundColor = [UIColor yellowColor];
    

    //右下
    _lb4 = [[UILabel alloc] init];
    _lb4.frame = CGRectMake(_superView.bounds.size.width - 40, _superView.bounds.size.height-40, 40, 40);
    _lb4.text = @"右下";
    _lb4.textAlignment = NSTextAlignmentCenter;
    _lb4.backgroundColor = [UIColor yellowColor];
    
    
    //中间
    _centerView = [[UIView alloc] init];
    _centerView.frame = CGRectMake(0, 0, _superView.bounds.size.width, 40);
    _centerView.backgroundColor = [UIColor yellowColor];
    _centerView.center = CGPointMake(_superView.bounds.size.width/2, _superView.bounds.size.height/2);
    
    //添加元素到视图
    [_superView addSubview:_lb1];
    [_superView addSubview:_lb2];
    [_superView addSubview:_lb3];
    [_superView addSubview:_lb4];
    [_superView addSubview:_centerView];
    [self.view addSubview:_superView];
    
    
    //自动布局
    _centerView.autoresizingMask = UIViewAutoresizingFlexibleTopMargin | UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleBottomMargin;
    _lb2.autoresizingMask = UIViewAutoresizingFlexibleTopMargin;
    _lb3.autoresizingMask = UIViewAutoresizingFlexibleLeftMargin;
    _lb4.autoresizingMask = UIViewAutoresizingFlexibleLeftMargin | UIViewAutoresizingFlexibleTopMargin | UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleHeight;
    
    
}

- (void) touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    
    static BOOL isLarger = NO;
    [UIView beginAnimations:nil context:nil];
    [UIView setAnimationDuration:1];
    if(isLarger == NO){
         _superView.frame = CGRectMake(10, 40, 400, 500);
    }else{
        _superView.frame = CGRectMake(10, 40, 300, 400);
    }
    [UIView commitAnimations];
    isLarger = !isLarger;
    
}


- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    [self createView];
}


@end
