//
//  SuperView.m
//  手动布局
//
//  Created by 赵超 on 2019/1/11.
//  Copyright © 2019 赵超. All rights reserved.
//

#import "SuperView.h"

@implementation SuperView

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

- (void) createSubView{
    //左上
    _v1 = [[UIView alloc] init];
    _v1.frame = CGRectMake(0, 0, 40, 40);
    _v1.backgroundColor = [UIColor redColor];
    
    
    //左下
    _v2 = [[UIView alloc] init];
    _v2.frame = CGRectMake(0, self.bounds.size.height-40, 40, 40);
    _v2.backgroundColor = [UIColor redColor];
    
    //右上
    _v3 = [[UIView alloc] init];
    _v3.frame = CGRectMake(self.bounds.size.width-40, 0, 40,40);
    _v3.backgroundColor = [UIColor redColor];
    
    //右下
    _v4 = [[UIView alloc] init];
    _v4.frame = CGRectMake(self.bounds.size.width-40, self.bounds.size.height-40, 40, 40);
    _v4.backgroundColor = [UIColor redColor];
    
    [self addSubview:_v1];
    [self addSubview:_v2];
    [self addSubview:_v3];
    [self addSubview:_v4];
}

- (void) layoutSubviews{
    [UIView beginAnimations:nil context:nil];
    [UIView setAnimationDuration:1];
     _v1.frame = CGRectMake(0, 0, 40, 40);
     _v2.frame = CGRectMake(0, self.bounds.size.height-40, 40, 40);
     _v3.frame = CGRectMake(self.bounds.size.width-40, 0, 40,40);
     _v4.frame = CGRectMake(self.bounds.size.width-40, self.bounds.size.height-40, 40, 40);
    [UIView commitAnimations];
}

@end
