//
//  ViewController.h
//  UIStepper和UISegmentedControl
//
//  Created by 赵超 on 2019/1/8.
//  Copyright © 2019 赵超. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
{
    //步进器，按照一定的数值来调整某个数据
    UIStepper* _stepper ;
    
    //分栏控制器定义
    UISegmentedControl* _segControl;
}


@property (retain, nonatomic) UIStepper* stepper;
@property (retain, nonatomic) UISegmentedControl* segControl;

@end

