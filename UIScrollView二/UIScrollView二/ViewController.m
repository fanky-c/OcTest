//
//  ViewController.m
//  UIScrollView二
//
//  Created by 赵超 on 2019/1/10.
//  Copyright © 2019 赵超. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

@synthesize sv = _sv;

- (void) createView{
    _sv = [[UIScrollView alloc] init];
    _sv.frame = CGRectMake(10, 40, 300, 400);
    _sv.bounces = YES;
    _sv.alwaysBounceVertical = YES;
    _sv.showsVerticalScrollIndicator = YES;
    //是否允许点击屏幕响应事件
    _sv.userInteractionEnabled = YES;
    _sv.backgroundColor = [UIColor redColor];
    _sv.pagingEnabled = NO;
    
    //设置画布的便偏移量,也就是滚动条移动的位置
    _sv.contentOffset = CGPointMake(0, 0);
    
    //设置画布大小
    _sv.contentSize = CGSizeMake(300, 400 * 7);
    
    //添加imageview
    for(int i = 0; i < 5; i++){
        NSString* imageName = [NSString stringWithFormat:@"image%d.jpg", i+1];
        UIImage* image = [UIImage imageNamed:imageName];
        UIImageView* view = [[UIImageView alloc] init];
        view.image = image;
        view.frame = CGRectMake(0, 400 * i, 300, 400);
        [_sv addSubview:view];
    }
    
    [self.view addSubview:_sv];
    
}

//点击屏幕其他地方返回
- (void) touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    //_sv.contentOffset = CGPointMake(0, 0);
    
    [_sv scrollRectToVisible:CGRectMake(0, 0, 300, 400) animated:YES];
}

- (void) scrollViewDidScroll:(UIScrollView *)scrollView{
    NSLog(@"y = %f", scrollView.contentOffset.y);
}


- (void) scrollViewWillBeginDragging:(UIScrollView *)scrollView{
    NSLog(@"开始拖动");
}

- (void) scrollViewWillEndDragging:(UIScrollView *)scrollView withVelocity:(CGPoint)velocity targetContentOffset:(inout CGPoint *)targetContentOffset{
    NSLog(@"即将结束拖动");
}

- (void) scrollViewWillBeginDecelerating:(UIScrollView *)scrollView{
    NSLog(@"开始减速");
}

- (void) scrollViewDidEndDecelerating:(UIScrollView *)scrollView{
    NSLog(@"已经停止");
}


- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    [self createView];
    
    _sv.delegate = self;
}


@end
