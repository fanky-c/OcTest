//
//  VC2.m
//  UIViewController基础二
//
//  Created by 赵超 on 2019/1/5.
//  Copyright © 2019 赵超. All rights reserved.
//

#import "VC2.h"

@interface VC2 ()

@end

@implementation VC2

-(void) touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    
    //关闭当前的视图
    //completion:完成此功能只会的回调
    [self dismissViewControllerAnimated:YES completion:nil];
    
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.view.backgroundColor = [UIColor greenColor];
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
