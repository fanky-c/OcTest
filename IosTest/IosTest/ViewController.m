//
//  ViewController.m
//  IosTest
//
//  Created by 赵超 on 2018/12/29.
//  Copyright © 2018 赵超. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    UIView *red = [[UIView alloc] initWithFrame:CGRectMake(100, 100, 200, 100)];
    red.backgroundColor = [UIColor blueColor];
    [self.view addSubview:red];
}

- (void)injected{
    NSLog(@"正在更新: %@", self);
    [self viewDidLoad];
}

@end
