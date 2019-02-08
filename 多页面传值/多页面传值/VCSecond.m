//
//  VCSecond.m
//  多页面传值
//
//  Created by 赵超 on 2019/2/8.
//  Copyright © 2019 赵超. All rights reserved.
//

#import "VCSecond.h"

@interface VCSecond ()

@end

@implementation VCSecond

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.title = @"视图二";
    self.view.backgroundColor = [UIColor blueColor];
    
    UIBarButtonItem* btnChange = [[UIBarButtonItem alloc] initWithTitle:@"改变颜色" style:UIBarButtonItemStylePlain target:self action:@selector(changeColor)];
    
    self.navigationItem.rightBarButtonItem = btnChange;
}

- (void) changeColor{
    NSLog(@"改变颜色视图一颜色！");
    //[self.delegate changeColor:[UIColor yellowColor]];
    [_delegate changeColor:[UIColor yellowColor]];
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
