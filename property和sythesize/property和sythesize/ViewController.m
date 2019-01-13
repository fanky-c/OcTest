//
//  ViewController.m
//  property和sythesize
//
//  Created by 赵超 on 2019/1/13.
//  Copyright © 2019 赵超. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    Dog* dog = [[Dog alloc] init];
    [dog setAge:100];
    int age = dog.age;
    
    NSLog(@"狗的年龄是：%d", age);
    
}


@end
