//
//  VCSecond.h
//  多页面传值
//
//  Created by 赵超 on 2019/2/8.
//  Copyright © 2019 赵超. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

//定义代理协议
@protocol VCSecondDelegate <NSObject>
//定义一个协议函数,改变背景颜色方法
- (void) changeColor:(UIColor*) color;
@end



@interface VCSecond : UIViewController

@property (assign, nonatomic) NSInteger tag;

//定义一个代理对象
//代理对象会执行协议函数
//通过代理对象实现协议函数，达到代理对象改变本身属性目的
@property (retain, nonatomic) id <VCSecondDelegate> delegate;

@end

NS_ASSUME_NONNULL_END
