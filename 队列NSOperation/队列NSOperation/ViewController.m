//
//  ViewController.m
//  多任务NSOperation
//
//  Created by 赵超 on 2019/2/14.
//  Copyright © 2019 赵超. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    NSArray* array = @[@"添加任务到队列1",@"添加任务到队列2"];
    for (int i=0; i<array.count; i++) {
        UIButton* btn = [UIButton buttonWithType:UIButtonTypeRoundedRect];
        btn.frame = CGRectMake(100, 100+80*i, 140, 40);
        [btn setTitle:[array objectAtIndex:i] forState:UIControlStateNormal];
        [btn addTarget:self action:@selector(pressBtn:) forControlEvents:UIControlEventTouchUpInside];
        [self.view addSubview:btn];
        btn.tag = 100 + i;
    }
    
    //创建任务队列
    _queue = [[NSOperationQueue alloc] init];
    //设置最大队列数
    [_queue setMaxConcurrentOperationCount:2];
    
    _lock = [[NSLock alloc] init];
    
}

-(void) pressBtn:(UIButton*) btn{
    if(btn.tag == 100){
        NSInvocationOperation* iop = [[NSInvocationOperation alloc] initWithTarget:self selector:@selector(go1:) object:@"队列1"];
        [_queue addOperation:iop];
    }
    else if(btn.tag == 101){
        [_queue addOperationWithBlock:^{
            [self go2];
        }];
    }
}

-(void) go1:(NSInvocationOperation*) iop{
    int i = 0;
    while (true) {
        if(i++ >= 10000){
            break;
        }
        [_lock lock];
        _count++;
        [_lock unlock];
        NSLog(@"_count1 = %ld", _count);
    }
}

-(void) go2{
    int i = 0;
    while (true) {
        if(i++ >= 10000){
            break;
        }
        [_lock lock];
        _count++;
        [_lock unlock];
        NSLog(@"_count2 = %ld", _count);
    }
}

@end
