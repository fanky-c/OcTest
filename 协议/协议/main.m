//
//  main.m
//  协议
//
//  Created by 赵超 on 2019/1/17.
//  Copyright © 2019 赵超. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "MyTest.h"
#import "MyProtocal.h"


//协议是多个对象之间协商的一个接口对象

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        MyTest* test = [[MyTest alloc] init];
        [test showInfo];
        
        //把print:转化为SEL类型的方法，然后判断是否是否有此方法
        SEL sel = @selector(print:);
        if([test respondsToSelector:sel]){
            [test print:10];
        }
        
        [test printValue:10 andValue:100];
        
        
        
        //用协议方式
        id <MyProtocal> myProtocal = [[MyTest alloc] init];
        
        //把print:转化为SEL类型的方法，然后判断是否是否有此方法
        SEL sel1 = @selector(print:);
        if([myProtocal respondsToSelector:sel1]){
            [myProtocal print:11];
        }
        
        [myProtocal printValue:110 andValue:1100];
    }
    return 0;
}
