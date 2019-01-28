//
//  AppDelegate.m
//  分栏控制器
//
//  Created by 赵超 on 2019/1/24.
//  Copyright © 2019 赵超. All rights reserved.
//

#import "AppDelegate.h"
#import "VCTabBar1.h"
#import "VCTabBar2.h"
#import "VCTabBar3.h"
#import "VCTabBar4.h"
#import "VCTabBar5.h"
#import "VCTabBar6.h"


@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    
    self.window = [[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];
    
    [self.window makeKeyAndVisible];
    
    VCTabBar1* tabBar1 = [[VCTabBar1 alloc] init];
    tabBar1.title = @"分栏一";   //必须放在调用viewDidLoadd方法前面
    tabBar1.view.backgroundColor = [UIColor redColor]; //这句话是调用了VCTabBar1 viewDidLoadd的方法
    
    VCTabBar2* tabBar2 = [[VCTabBar2 alloc] init];
    tabBar2.view.backgroundColor = [UIColor blueColor];
    tabBar2.title = @"分栏二";
    
    VCTabBar3* tabBar3 = [[VCTabBar3 alloc] init];
    tabBar3.view.backgroundColor = [[UIColor yellowColor] init];
    tabBar3.title = @"分栏三";
    
    VCTabBar4* tabBar4 = [[VCTabBar4 alloc] init];
    tabBar4.view.backgroundColor = [[UIColor grayColor] init];
    tabBar4.title = @"分栏四";
    

    VCTabBar5* tabBar5 = [[VCTabBar5 alloc] init];
    tabBar5.view.backgroundColor = [[UIColor purpleColor] init];
    tabBar5.title = @"分栏五";

    VCTabBar6* tabBar6 = [[VCTabBar6 alloc] init];
    tabBar6.view.backgroundColor = [[UIColor blackColor] init];
    tabBar6.title = @"分栏六";
    
    NSArray* array = [NSArray arrayWithObjects:tabBar2, tabBar1, tabBar3, tabBar4, tabBar5, tabBar6, nil];
    
    //创建分栏控制器对象
    UITabBarController* tbController = [[UITabBarController alloc] init];
    
    //分栏视图控制器管理数组
    tbController.viewControllers = array;
    
    //分栏是否透明
    tbController.tabBar.translucent = NO;
    
    //分栏颜色
    //tbController.tabBar.barTintColor = [UIColor yellowColor];
    
    //分栏选中颜色
    tbController.tabBar.tintColor = [UIColor blackColor];
    
    //设置选中的视图，索引值从0开始
    tbController.selectedIndex = 2;
    
    //判断当前选中的按个视图
    if(tbController.selectedViewController == tabBar3){
        NSLog(@"当前选中tabBar3");
    }
    
    
    //根视图控制器对象赋值为分栏控制器对象
    self.window.rootViewController = tbController;
    
    //协议对象
    tbController.delegate = self;
    
    return YES;
}

//即将显示编辑
- (void) tabBarController:(UITabBarController *)tabBarController willBeginCustomizingViewControllers:(NSArray<__kindof UIViewController *> *)viewControllers
{
    NSLog(@"即将显示编辑");
}

//即将结束编辑
- (void) tabBarController:(UITabBarController *)tabBarController willEndCustomizingViewControllers:(NSArray<__kindof UIViewController *> *)viewControllers changed:(BOOL)changed
{
    NSLog(@"即将结束编辑");
}



//已经结束编辑
- (void) tabBarController:(UITabBarController *)tabBarController didEndCustomizingViewControllers:(NSArray<__kindof UIViewController *> *)viewControllers changed:(BOOL)changed
{
    if(changed == YES){
        NSLog(@"已经结束编辑， 当前排序：%@",viewControllers);
    }
}



//选中控制器
- (void) tabBarController:(UITabBarController *)tabBarController didSelectViewController:(UIViewController *)viewController
{
    NSLog(@"选中控制器：%@", viewController);
    
    //NSLog(@"选中控制器：%@",tabBarController.viewControllers[tabBarController.selectedIndex]);
}



- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
}


- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}


- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
}


- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}


- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}


@end
