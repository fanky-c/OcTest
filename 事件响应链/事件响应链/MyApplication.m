//
//  MyApplication.m
//  事件响应链
//
//  Created by 赵超 on 2019/1/13.
//  Copyright © 2019 赵超. All rights reserved.
//

#import "MyApplication.h"

@implementation MyApplication

- (void) touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    NSLog(@"MyApplication 事件响应next == %@", self.nextResponder);
    
    //手动向下传递
    [super touchesBegan:touches withEvent:event];
}

@end
