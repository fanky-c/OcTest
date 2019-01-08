//
//  ViewController.h
//  UISlider和UIProgressView
//
//  Created by 赵超 on 2019/1/8.
//  Copyright © 2019 赵超. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
{
    UISlider * _slider;
    UIProgressView * _pView;
}

@property (retain, nonatomic) UISlider *slider;
@property (retain, nonatomic) UIProgressView * pView;

@end

