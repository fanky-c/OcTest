//
//  Dog.m
//  协议代理模式
//
//  Created by 赵超 on 2019/1/17.
//  Copyright © 2019 赵超. All rights reserved.
//

#import "Dog.h"

@implementation Dog

@synthesize ID = _ID;
@synthesize delegate = _delegate;
@synthesize barkCount = _barkCount;

- (id) init{
    self = [super init];
    if(self){
        _timer = [NSTimer scheduledTimerWithTimeInterval:1 target:self selector:@selector(updateTimer:) userInfo:nil repeats:YES];
    }
    return self;
}

- (void) updateTimer:(id) arguments{
    _barkCount++;
    NSLog(@"dog bar %d", _barkCount);
    //通知dog的拥有者
    [_delegate bark:self count:_barkCount];
}
@end
