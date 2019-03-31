//
//  ViewController.m
//  pThread
//
//  Created by 赵超 on 2019/3/30.
//  Copyright © 2019 赵超. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UIButton* btn = [UIButton buttonWithType:UIButtonTypeCustom];
    btn.frame = CGRectMake(100, 100, 100, 50);
    [btn setTitle:@"pThread" forState:UIControlStateNormal];
    [btn setTitleColor:[UIColor blueColor] forState:UIControlStateNormal];
    [btn addTarget:self action:@selector(clickPthread) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn];
}

-(void)clickPthread{
    NSLog(@"我在主线程");
    pthread_t pthread;
    pthread_create(&pthread,NULL, run, NULL);
}

void *run(void *data){
    NSLog(@"我在子线程");
    for (int i=0; i<10; i++) {
        NSLog(@"%d", i);
        sleep(1);
    }
    return  NULL;
}


@end
