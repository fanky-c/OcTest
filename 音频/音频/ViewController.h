//
//  ViewController.h
//  音频
//
//  Created by 赵超 on 2019/2/17.
//  Copyright © 2019 赵超. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <AVFoundation/AVFoundation.h>

@interface ViewController : UIViewController <AVAudioPlayerDelegate>
{
    UIButton* _btnPlay;
    UIButton* _btnPause;
    UIButton* _btnStop;
    //音频进度条
    UIProgressView* _audioProgress;
    //音量大小
    UISlider* _volumeSlider;
    //静音开关
    UISwitch* _volumeOn;
    //音频播放器
    AVAudioPlayer* _player;
    
    //定时器
    NSTimer* _timer;
    
}

@end

