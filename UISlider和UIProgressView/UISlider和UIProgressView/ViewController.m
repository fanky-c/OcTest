//
//  ViewController.m
//  UISlider和UIProgressView
//
//  Created by 赵超 on 2019/1/8.
//  Copyright © 2019 赵超. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

@synthesize pView = _pView;
@synthesize slider = _slider;


- (void) createProgress{
    _pView = [[UIProgressView alloc] init];
    
    //高度无法设置
    _pView.frame = CGRectMake(50, 100, 300, 40);
    
    //进度条的风格颜色值
    _pView.progressTintColor = [UIColor redColor];
    
    //范围是从0-1
    _pView.progress = 0.5;
    
    //设置进度条的风格
    _pView.progressViewStyle = UIProgressViewStyleDefault;
    
    [self.view addSubview:_pView];
}

- (void) createSlider{
    _slider = [[UISlider alloc] init];
    
    //高度无法设置
    _slider.frame = CGRectMake(50, 200, 300, 40);
    
    _slider.maximumValue = 100;
    
    _slider.minimumValue = -100;
    
    _slider.value = 0;
    
    _slider.maximumTrackTintColor = [UIColor greenColor];
    
    _slider.minimumTrackTintColor = [UIColor blueColor];
    
    _slider.thumbTintColor = [UIColor orangeColor];
    
    [_slider addTarget:self action:@selector(pressSlider:) forControlEvents:UIControlEventValueChanged];
    
    [self.view addSubview:_slider];
}


- (void) pressSlider:(UISlider *) s{
    _pView.progress = (s.value - s.minimumValue) / (s.maximumValue - s.minimumValue);
    NSLog(@"%f", s.value);
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    [self createSlider];
    [self createProgress];
}


@end
