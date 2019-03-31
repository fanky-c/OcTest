//
//  ViewController.m
//  多线程NSThread
//
//  Created by 赵超 on 2019/2/13.
//  Copyright © 2019 赵超. All rights reserved.
//

#import "ViewController.h"
#import "TicketMangager.h"



@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    NSArray* array = [[NSArray alloc] initWithObjects:@"启动线程一",@"启动线程二",@"启动线程三",@"上海北京卖票", nil];

    for(int i=0; i<array.count; i++){
        UIButton* btn = [UIButton buttonWithType:UIButtonTypeRoundedRect];
        btn.frame = CGRectMake(100, 100+80*i, 100, 40);
        [btn setTitle:[array objectAtIndex:i] forState:UIControlStateNormal];
        [btn addTarget:self action:@selector(pressBtn:) forControlEvents:UIControlEventTouchUpInside];
        [self.view addSubview:btn];
        btn.tag = 100 + i;
    }
    
    _lock = [[NSLock alloc] init];
}

- (void) pressBtn:(UIButton*) btn{
    NSInteger tags = btn.tag;
    if(tags == 100){
//        int i = 0;
//        while (true) {
//            i++;
//            NSLog(@"i = %d", i);
//        }
        
        //创建线程,手动运行
        //p1:线程对象运行函数的拥有者
        //p2:线程处理函数
        //线程参数
        _thread1 = [[NSThread alloc] initWithTarget:self selector:@selector(go1:) object:nil];
        
        //启动线程
        [_thread1 start];
    }
    else if (tags == 101){
        //创建线程立即运行
        [NSThread detachNewThreadSelector:@selector(go2:) toTarget: self withObject:nil];
    }
    else if (tags == 102){
        NSLog(@"正常点击了按钮3");
    }else if(tags == 103){
        TicketMangager* ticket = [[TicketMangager alloc] init];
        [ticket startSaleTicket];
    }
}

-(void) go1:(NSThread*) thread{
    int i = 0;
    while (true) {
        if(i++ >= 10000){
            break;
        }
        //加锁、解锁
        [_lock lock];
        _count++;
        [_lock unlock];
        NSLog(@"运行线程1, _count = %ld", _count);
    }
    NSLog(@"最终1, _count = %ld", _count);
}

-(void) go2:(NSThread*) thread{
    int i =0;
    while (true) {
        if(i++ >= 10000){
            break;
        }
        [_lock lock];
        _count++;
        [_lock unlock];
        NSLog(@"运行线程2, _count = %ld", _count);
    }
     NSLog(@"最终2, _count = %ld", _count);
}


@end
