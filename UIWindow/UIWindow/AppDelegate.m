//
//  AppDelegate.m
//  UIWindow
//
//  Created by 赵超 on 2019/1/4.
//  Copyright © 2019 赵超. All rights reserved.
//

#import "AppDelegate.h"

@interface AppDelegate ()

@end

@implementation AppDelegate



//程序入口
- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    
    //创建window
    self.window = [[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];
    
   //通过rootView
    self.window.rootViewController = [[UIViewController alloc] init];
    
    self.window.backgroundColor = [UIColor blueColor];
    
    //创建Uiview
    UIView * view = [[UIView alloc] initWithFrame:CGRectMake(100, 100, 150, 150)];
    view.backgroundColor = [UIColor redColor];

    //创建大的背景视图
    UIView *backView = [[UIView alloc] initWithFrame:CGRectMake(10, 0, 300, 400)];
    backView.backgroundColor = [UIColor grayColor];
    
    
    //添加view到backView中
    [backView addSubview:view];
    
    [self.window addSubview:backView];
 
    
    //使window有效并且显示到屏幕上
    [self.window makeKeyAndVisible];
    
    //各个window属性都相等,最终都是指向self.window
    if(self.window == view.window && view.window == backView.window && view.window == self.window.rootViewController.view.window){
        NSLog(@"其实四个window都是相等！！！");
    }
    
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
