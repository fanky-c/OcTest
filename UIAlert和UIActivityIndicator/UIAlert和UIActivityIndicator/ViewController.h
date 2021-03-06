//
//  ViewController.h
//  UIAlert和UIActivityIndicator
//
//  Created by 赵超 on 2019/1/8.
//  Copyright © 2019 赵超. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
{
    UIAlertController* _alertView;
    UIActivityIndicatorView* _activityIndicator;
}

@property (retain, nonatomic) UIAlertController* alertView;
@property (retain, nonatomic) UIActivityIndicatorView* activityIndicator;

@end

