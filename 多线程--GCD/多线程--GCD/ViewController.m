//
//  ViewController.m
//  多线程--GCD
//
//  Created by 赵超 on 2019/4/1.
//  Copyright © 2019 赵超. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    NSArray* array = [[NSArray alloc] initWithObjects:@"单个异步线程",@"多个异步线程",@"串行执行",@"并行执行", nil];
    
    for(int i=0; i<array.count; i++){
        UIButton* btn = [UIButton buttonWithType:UIButtonTypeRoundedRect];
        btn.frame = CGRectMake(100, 100+80*i, 100, 40);
        [btn setTitle:[array objectAtIndex:i] forState:UIControlStateNormal];
        [btn addTarget:self action:@selector(pressBtn:) forControlEvents:UIControlEventTouchUpInside];
        [self.view addSubview:btn];
        btn.tag = 100 + i;
    }
}

-(void)pressBtn:(UIButton*)btn{
    NSInteger tag = btn.tag;
    
    NSLog(@"点击了按钮，tag=%ld", tag);
    
    if(tag == 100){
        dispatch_async(dispatch_get_global_queue(0, 0), ^{
            NSLog(@"我是子线程，正在做耗时任务");
            [NSThread sleepForTimeInterval:3];
            dispatch_async(dispatch_get_main_queue(), ^{
                NSLog(@"回到线程，可以刷新UI操作");
            });
        });
    }else if(tag == 101){
        //第一个参数控制优先级，但是不能保证结果顺序（-2 0 2）
        dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_LOW, 0), ^{
            NSLog(@"start task 1");
            [NSThread sleepForTimeInterval:3];
            NSLog(@"end task 1");
        });
        dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0), ^{
            NSLog(@"start task 2");
            [NSThread sleepForTimeInterval:3];
            NSLog(@"end task 2");
        });
        dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_HIGH, 0), ^{
            NSLog(@"start task 3");
            [NSThread sleepForTimeInterval:3];
            NSLog(@"end task 3");
        });
        
    }else if(tag == 102){
        //DISPATCH_QUEUE_SERIAL 只开一个线程串行执行和默认值NULL一样
        dispatch_queue_t queue = dispatch_queue_create("com.my.queue.test", DISPATCH_QUEUE_SERIAL);
        
        dispatch_async(queue, ^{
            NSLog(@"start task 1");
            [NSThread sleepForTimeInterval:3];
            NSLog(@"end task 1");
        });
        dispatch_async(queue, ^{
            NSLog(@"start task 2");
            [NSThread sleepForTimeInterval:2];
            NSLog(@"end task 2");
        });
        dispatch_async(queue, ^{
            NSLog(@"start task 3");
            [NSThread sleepForTimeInterval:1];
            NSLog(@"end task 3");
        });
    }else if(tag == 103){
        //DISPATCH_QUEUE_CONCURRENT 单独开三个线程执行,并行执行
        dispatch_queue_t queue = dispatch_queue_create("com.my.queue.test", DISPATCH_QUEUE_CONCURRENT);
        
        dispatch_async(queue, ^{
            NSLog(@"start task 1");
            [NSThread sleepForTimeInterval:3];
            NSLog(@"end task 1");
        });
        dispatch_async(queue, ^{
            NSLog(@"start task 2");
            [NSThread sleepForTimeInterval:2];
            NSLog(@"end task 2");
        });
        dispatch_async(queue, ^{
            NSLog(@"start task 3");
            [NSThread sleepForTimeInterval:1];
            NSLog(@"end task 3");
        });
    }
}


@end
