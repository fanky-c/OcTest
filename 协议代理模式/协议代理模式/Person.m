//
//  Person.m
//  协议代理模式
//
//  Created by 赵超 on 2019/1/17.
//  Copyright © 2019 赵超. All rights reserved.
//

#import "Person.h"

@implementation Person

@synthesize dog = _dog;

- (void) setDog:(Dog *)dog{
    if(_dog != dog){
        _dog = dog;
        //通知_dog的拥有者， self
        [_dog setDelegate:self];
    }
}

- (Dog *)dog{
    return _dog;
}

- (void) bark:(Dog *)thisDog count:(int)count{
    //当狗叫时候，Person类实现此方法
    NSLog(@"Person this is dog %d bark %d", thisDog.ID, count);
}

- (void) dealloc{
    _dog = nil;
    NSLog(@"dog is dealloc");
}

@end
