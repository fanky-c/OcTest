//
//  Toast.m
//  多线程--GCD
//
//  Created by 赵超 on 2019/4/3.
//  Copyright © 2019 赵超. All rights reserved.
//

#import "Toast.h"

@implementation Toast
+(id)sharedInstance{
    static dispatch_once_t once;
    static Toast* _signle;
    dispatch_once(&once, ^{
        _signle = [[Toast alloc] init];
        NSLog(@"创建单例！");
    });
    return _signle;
}
@end
