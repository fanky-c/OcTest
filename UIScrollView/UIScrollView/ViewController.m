//
//  ViewController.m
//  UIScrollView
//
//  Created by 赵超 on 2019/1/10.
//  Copyright © 2019 赵超. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController


@synthesize sv = _sv;


- (void) createSrollView{
    _sv = [[UIScrollView alloc] init];
    
    //位置
    _sv.frame = CGRectMake(10, 50, 300, 400);
    
    //是否一次滚动整页
    _sv.pagingEnabled = YES;
    
    //是否可以滚动
    _sv.scrollEnabled = YES;
    
    //设置滚动的内容区域
    _sv.contentSize = CGSizeMake(300 * 5, 400);
    
    //是否边缘弹动效果
    _sv.bounces = YES;
    
    //是否开启垂直弹动效果
    _sv.alwaysBounceVertical = NO;
    
    //是否开启横向弹动效果
    _sv.alwaysBounceHorizontal = YES;
    
    //是否显示垂直滚动条
    _sv.showsVerticalScrollIndicator = YES;
    
    //是否显示横向滚动条
    _sv.showsHorizontalScrollIndicator = YES;
    
    //当前滚动区域的背景色
    _sv.backgroundColor = [UIColor greenColor];
    
    [self createImageView];
    
    //添加到视图
    [self.view addSubview:_sv];
    
    
}

- (void) createImageView{
    for(int i = 0; i < 5; i++){
        NSString* imageName = [NSString stringWithFormat:@"image%d.jpg", i+1];
        NSLog(@"%d", i);
        UIImage* image= [UIImage imageNamed:imageName];
        UIImageView* view = [[UIImageView alloc] initWithImage:image];
        view.frame = CGRectMake(300 * i, 0, 300, 400);
        [_sv addSubview:view];
    }
}


- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    [self createSrollView];
}


@end
