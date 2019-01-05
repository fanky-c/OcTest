//
//  main.m
//  UIViewController基础
//
//  Created by 赵超 on 2019/1/5.
//  Copyright © 2019 赵超. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AppDelegate.h"


//程序主入口

int main(int argc, char * argv[]) {
    
    //自动内存释放池（对应手动内存释放）
    @autoreleasepool {
        
        //UIKit框架结构的启动函数
        //argc: 启动时带参数的个数
        //argv: 参数列表 -p -v
        //参数三： 要求传入一个主框架的类对象，入口参数为nil，系统会自动默认的框架为主框架名（UIApplication）
        //参数四： 主框架的代理类的对象名字(苹果封闭系统原因，对外开放的代理类)
        return UIApplicationMain(argc, argv, nil, NSStringFromClass([AppDelegate class]));
    }
}
