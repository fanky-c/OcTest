//
//  VCTabBar1.m
//  分栏控制器
//
//  Created by 赵超 on 2019/1/24.
//  Copyright © 2019 赵超. All rights reserved.
//

#import "VCTabBar1.h"

@interface VCTabBar1 ()

@end

@implementation VCTabBar1

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    //UITabBarItem* tabBarItem = [[UITabBarItem alloc] initWithTitle:@"测试分类一" image:nil tag:10];
    UITabBarItem* tabBarItem = [[UITabBarItem alloc] initWithTabBarSystemItem:UITabBarSystemItemContacts tag:10];
    
    tabBarItem.badgeValue = @"123";
    tabBarItem.badgeColor = [UIColor blackColor];
    
    self.tabBarItem = tabBarItem;
    
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
