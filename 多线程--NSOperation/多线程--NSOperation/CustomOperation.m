//
//  CustomOperation.m
//  多线程--NSOperation
//
//  Created by 赵超 on 2019/4/6.
//  Copyright © 2019 赵超. All rights reserved.
//

#import "CustomOperation.h"

@implementation CustomOperation
-(instancetype)initName:(NSString *)name{
    self = [super init];
    if(self){
        self.operationName = name;
    }
    return self;
}


-(void)main{
    
    //这里面是同步执行
//    for (int i=0; i<5; i++) {
//        [NSThread sleepForTimeInterval:1];
//        NSLog(@"%@ %d", self.operationName, i);
//    }
    
    
    //这里是异步执行
    dispatch_async(dispatch_get_global_queue(0, 0), ^{
        if(self.cancelled) return ;
        for (int i=0; i<5; i++) {
            [NSThread sleepForTimeInterval:1];
            NSLog(@"%@ %d", self.operationName, i);
        }
        self.over = YES;
    });
    
    while(!self.over && !self.cancelled){
        [[NSRunLoop currentRunLoop] runMode:NSDefaultRunLoopMode beforeDate:[NSDate distantFuture]];
    };
}

@end
