//
//  ViewController.m
//  多线程--NSOperation
//
//  Created by 赵超 on 2019/4/3.
//  Copyright © 2019 赵超. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (nonatomic, strong) NSOperationQueue* operQueue;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    NSArray* array = [[NSArray alloc] initWithObjects:@"NSInvocationOperation",@"NSBlockOperation", @"NSOperationQueue",nil];
    
    for(int i=0; i<array.count; i++){
        UIButton* btn = [UIButton buttonWithType:UIButtonTypeRoundedRect];
        btn.frame = CGRectMake(100, 100+80*i, 160, 40);
        [btn setTitle:[array objectAtIndex:i] forState:UIControlStateNormal];
        [btn addTarget:self action:@selector(pressBtn:) forControlEvents:UIControlEventTouchUpInside];
        [self.view addSubview:btn];
        btn.tag = 100 + i;
    }
}

-(void)pressBtn:(UIButton*)btn{
    NSInteger tag = [btn tag];
    if(tag == 100){
        [self invocationOperationTest];
    }else if(tag == 101){
        [self blockOperationTest];
    }else if(tag == 102){
        [self operationQueue];
    }
}

/**
   NSInvocationOperation方式
 **/

//NSInvocationOperation和NSBlockOperation都是同步方法且阻塞当前的线程：如果再主线程就阻塞主线程，如果在线程就阻塞子线程！
-(void)invocationOperationTest{
    
//    NSLog(@"main thread");
//    NSInvocationOperation *invovationOperation = [[NSInvocationOperation alloc] initWithTarget:self selector:@selector(invocationAction) object:nil];
//    [invovationOperation start];
//    NSLog(@"invovation end");
    
    
    NSLog(@"main thread");
    dispatch_async(dispatch_get_global_queue(0, 0), ^{
        NSLog(@"当前处于子线程");
        NSInvocationOperation *invovationOperation = [[NSInvocationOperation alloc] initWithTarget:self selector:@selector(invocationAction) object:nil];
        [invovationOperation start];
        NSLog(@"invovation end");
    });
    
}

-(void)invocationAction{
    for (int i=0; i<5; i++) {
        [NSThread sleepForTimeInterval:1];
        NSLog(@"invocation: %d", i);
    }
}



/**
   NSBlockOperation方式
 **/

-(NSBlockOperation*)blockOperationTest{
    NSLog(@"main thread");
    NSBlockOperation* blockOperation = [NSBlockOperation blockOperationWithBlock:^{
        for (int i=0; i<5; i++) {
            [NSThread sleepForTimeInterval:1];
            NSLog(@"Block: %d", i);
        }
    }];
    
    [blockOperation start];
    NSLog(@"Block end");
    return blockOperation;
}

/**
   NSOperatopnQueue,异步执行，新开一个线程!
 **/
-(void)operationQueue{
    NSLog(@"main thread");
    if(!self.operQueue){
         self.operQueue = [[NSOperationQueue alloc] init];
    }
    
    NSBlockOperation* blockOperation = [NSBlockOperation blockOperationWithBlock:^{
        for (int i=0; i<5; i++) {
            [NSThread sleepForTimeInterval:1];
            NSLog(@"Block: %d", i);
        }
    }];
    
    [self.operQueue addOperation:blockOperation];

    NSLog(@"end");
}


@end
