//
//  VCSecond.m
//  导航控制器切换
//
//  Created by 赵超 on 2019/1/23.
//  Copyright © 2019 赵超. All rights reserved.
//

#import "VCSecond.h"
#import "VCThird.h"

@interface VCSecond ()

@end

@implementation VCSecond

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.view.backgroundColor = [UIColor yellowColor];
    
    self.navigationItem.title = @"第二导航";
    
    UIBarButtonItem* rightBtn = [[UIBarButtonItem alloc] initWithTitle:@"下一级" style:UIBarButtonItemStylePlain target:self action:@selector(pressNext)];
    
    self.navigationItem.rightBarButtonItem = rightBtn;
    
}

- (void) pressNext{
    [self.navigationController pushViewController:[[VCThird alloc] init] animated:YES];
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
