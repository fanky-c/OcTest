//
//  ViewController.m
//  NSUserDefaults
//
//  Created by 赵超 on 2019/2/7.
//  Copyright © 2019 赵超. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    
    UIButton* btn1 = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    btn1.frame = CGRectMake(100, 100, 80, 40);
    [btn1 setTitle:@"写入数据" forState:UIControlStateNormal];
    [btn1 addTarget:self action:@selector(pressWrite) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn1];
    
    
    UIButton* btn2 = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    btn2.frame = CGRectMake(100, 200, 80, 40);
    [btn2 setTitle:@"读出数据" forState:UIControlStateNormal];
    [btn2 addTarget:self action:@selector(pressRead) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn2];
    

    UIButton* btn3 = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    btn3.frame = CGRectMake(100, 300, 80, 40);
    [btn3 setTitle:@"删除数据" forState:UIControlStateNormal];
    [btn3 addTarget:self action:@selector(pressDelete) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn3];
    
}


- (void) pressWrite{
    //不需要alloc创建
    NSUserDefaults* ud = [NSUserDefaults standardUserDefaults];
    
    //p1:id
    //p2:nsstring
    [ud setObject:@"zhaochao" forKey:@"name"];
    
    NSNumber* age = [NSNumber numberWithInt:10];
    [ud setObject:age forKey:@"age"];
    
    NSArray* array = [NSArray arrayWithObjects:@"11",@"age",@"num", nil];
    [ud setObject:array forKey:@"array"];
    
    //存储整形
    [ud setInteger:123 forKey:@"INT"];
    
    [ud setBool:YES forKey:@"BOOL"];
    
    [ud setFloat:2.45 forKey:@"FLOAT"];
    
    NSLog(@"写入成功！");
    
}

- (void) pressRead{
    NSUserDefaults* ud = [NSUserDefaults standardUserDefaults];
    NSArray* array = [ud objectForKey:@"array"];
    NSLog(@"array = %@", array);
    
    id object = [ud objectForKey:@"name"];
    NSString* name = (NSString*) object;
    NSLog(@"name = %@", name);
    
    object = [ud objectForKey:@"age"];
    NSNumber* age = (NSNumber*) object;
    NSLog(@"age = %@", age);
    
    NSInteger INT = [ud integerForKey:@"INT"];
    NSLog(@"INT = %ld", INT);
    
}

- (void) pressDelete{
    NSUserDefaults* ud = [NSUserDefaults standardUserDefaults];
    [ud removeObjectForKey:@"array"];
    NSLog(@"array删除成功！");
}


@end
