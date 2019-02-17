//
//  ViewController.m
//  音频
//
//  Created by 赵超 on 2019/2/17.
//  Copyright © 2019 赵超. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    //创建开始播放按钮
    _btnPlay = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    _btnPlay.frame = CGRectMake(100, 100, 100, 40);
    [_btnPlay setTitle:@"播放" forState:UIControlStateNormal];
    [_btnPlay addTarget:self action:@selector(pressPlay) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:_btnPlay];
    
    
    //创建暂停播放按钮
    _btnPause = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    _btnPause.frame = CGRectMake(100, 160, 100, 40);
    [_btnPause setTitle:@"暂停" forState:UIControlStateNormal];
    [_btnPause addTarget:self action:@selector(pressPause) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:_btnPause];
    
    
    //创建停止播放按钮
    _btnStop = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    _btnStop.frame = CGRectMake(100, 220, 100, 40);
    [_btnStop setTitle:@"停止" forState:UIControlStateNormal];
    [_btnStop addTarget:self action:@selector(pressStop) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:_btnStop];
    
    //创建进度条
    _audioProgress = [[UIProgressView alloc] init];
    _audioProgress.frame = CGRectMake(20, 300,self.view.frame.size.width - 40, 20);
    _audioProgress.progress = 0;
    [self.view addSubview:_audioProgress];
    
    //创建音量大小滑动条
    _volumeSlider = [[UISlider alloc] init];
    _volumeSlider.frame =  CGRectMake(20, 380,self.view.frame.size.width - 40, 20);
    _volumeSlider.maximumValue = 100;
    _volumeSlider.minimumValue = 0;
    [_volumeSlider addTarget:self action:@selector(volumeChange:) forControlEvents:UIControlEventValueChanged];
    [self.view addSubview:_volumeSlider];
    
    
}

- (void) pressPlay{
    NSLog(@"pressPlay");
}

- (void) pressPause{
    NSLog(@"pressPause");
}

- (void) pressStop{
    NSLog(@"pressStop");
}

-(void) volumeChange:(UISlider*) slider{
    //_audioProgress.progress = slider.value / 100;
    NSLog(@"volume = %f" , slider.value);
}

@end
