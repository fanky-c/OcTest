//
//  ViewController.h
//  UIScrollView二
//
//  Created by 赵超 on 2019/1/10.
//  Copyright © 2019 赵超. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController<UIScrollViewDelegate>
{
    UIScrollView * _sv;
}

@property (retain, nonatomic) UIScrollView* sv;

@end

