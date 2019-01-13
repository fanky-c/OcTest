//
//  VCRoot.m
//  事件响应链
//
//  Created by 赵超 on 2019/1/13.
//  Copyright © 2019 赵超. All rights reserved.
//

#import "VCRoot.h"
#import "MainView.h"
#import "SubView.h"

@interface VCRoot ()

@end

@implementation VCRoot

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    //mainView
    MainView* _mainView = [[MainView alloc] init];
    _mainView.frame = CGRectMake(20, 80, 300, 400);
    _mainView.backgroundColor = [UIColor redColor];
    [self.view addSubview:_mainView];
    
    //SubView
    SubView* _subView = [[SubView alloc] init];
    _subView.frame = CGRectMake(20, 40, 250, 300);
    _subView.backgroundColor = [UIColor yellowColor];
    [_mainView addSubview:_subView];
    
    
    //rootView
    self.view.backgroundColor = [UIColor blueColor];
    
}


// 在有效的视图中子视图是优先级
// SubView > MainView > VCRoot > AppDelegate
// 如果子视图响应事件，事件就不会再传递下去了
- (void) touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    NSLog(@"VCRoot view 事件响应!!! next == %@", self.nextResponder);
    
    //手动向下传递
    [super touchesBegan:touches withEvent:event];
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
