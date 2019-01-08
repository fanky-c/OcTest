//
//  ViewController.m
//  UIStepper和UISegmentedControl
//
//  Created by 赵超 on 2019/1/8.
//  Copyright © 2019 赵超. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

@synthesize stepper = _stepper;
@synthesize segControl = _segControl;


-(void) createStepper{
    _stepper = [[UIStepper alloc] init];
    
    //宽高是无法改变
    _stepper.frame = CGRectMake(100, 100, 80, 40);
    
    _stepper.minimumValue = 0;
    
    _stepper.maximumValue = 100;
    
    //当前的值
    _stepper.value = 10;
    
    //每次改变的值是多少
    _stepper.stepValue = 5;
    
    //是否可连续重复响应事件，就是按着不松开
    _stepper.autorepeat = YES;
    
    //是否响应连续事件，只有当autorepeat为true才响应
    _stepper.continuous = YES;
    
    [_stepper addTarget:self action:@selector(stepChange) forControlEvents:UIControlEventValueChanged];
    
    [self.view addSubview:_stepper];
    
}


-(void) stepChange{
    NSLog(@"%f" , _stepper.value);
}


- (void) createSegControl{
    _segControl = [[UISegmentedControl alloc] init];
    
    _segControl.frame = CGRectMake(10, 200, 300, 40);
    
    [_segControl insertSegmentWithTitle:@"5元" atIndex:0 animated:YES];
    
    [_segControl insertSegmentWithTitle:@"10元" atIndex:1 animated:YES];
    
    [_segControl insertSegmentWithTitle:@"15元" atIndex:3 animated:YES];
    
    
    //当前选中的值
    _segControl.selectedSegmentIndex = 1;
    
    [_segControl addTarget:self action:@selector(segControlChange) forControlEvents:UIControlEventValueChanged];
    
    [self.view addSubview:_segControl];
    
}

-(void) segControlChange{
    NSLog(@"%d" , _segControl.selectedSegmentIndex);
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    [self createStepper];
    
    [self createSegControl];
    
}


@end
