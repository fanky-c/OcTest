//
//  AppDelegate.m
//  UITableView
//
//  Created by 赵超 on 2019/2/9.
//  Copyright © 2019 赵超. All rights reserved.
//

#import "AppDelegate.h"
#import "VCTableView1.h"
#import "VCTableView2.h"
#import "VCTableView3.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    
    self.window = [[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];
    [self.window makeKeyAndVisible];
    
    VCTableView1* vcTable1 = [[VCTableView1 alloc] init];
    vcTable1.title = @"数据视图一";
    VCTableView2* vcTable2 = [[VCTableView2 alloc] init];
    vcTable2.title = @"数据视图二";
    VCTableView3* vcTable3 = [[VCTableView3 alloc] init];
    vcTable3.title = @"数据视图三";
    
    UINavigationController* nav = [[UINavigationController alloc] initWithRootViewController:vcTable3];
    
    NSArray* array = [NSArray arrayWithObjects:vcTable1,vcTable2, nav, nil];
    UITabBarController* tabBarController = [[UITabBarController alloc] init];
    tabBarController.viewControllers = array;
    
    self.window.rootViewController = tabBarController;
    
    return YES;
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
