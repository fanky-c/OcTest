//
//  main.m
//  alloc、retain和release
//
//  Created by 赵超 on 2019/1/14.
//  Copyright © 2019 赵超. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"
#import "Dog.h"


//alloc函数是创建对象使用，创建完计数器（retainCount）为1，但是只能使用1次。
//retain是对一个对象计数器+1，无使用次数限制
//release是对一个对象计数器-1，如果为0就自动调用dealloc从内存中删除

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        NSLog(@"开始管理内存！！！");
        Dog* dog1 = [[Dog alloc] init];
        [dog1 setID:1];
        
        Person* Xiaoli = [[Person alloc] init];
        //Xiaoli遛狗
        [Xiaoli setDog:dog1];
        
        //释放内存
        //[dog1 release];
        //[dog1 retainCount]
        //[Xiaoli release];
        //[dog1 retainCount]
        
        
        
    }
    return 0;
}
