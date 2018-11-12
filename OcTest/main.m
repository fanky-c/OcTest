//
//  main.m
//  OcTest
//
//  Created by 赵超 on 2018/11/12.
//  Copyright © 2018 赵超. All rights reserved.
//

#import <Foundation/Foundation.h>


//NSObject 基类(根类)
@interface Student : NSObject
{
    //实例变量
    NSString *_name;
    NSInteger _age;
}

//构造方法(初始化方法)
- (id) init;

//setter方法
// - 代表实例对象可用的方法
//void 无返回值
//setName: 为方法名
- (void) setName:(NSString *)name;
- (void) setAge:(NSInteger)age;
- (void) setName:(NSString *)name andAge:(NSInteger)age;


//getter方法
- (NSString *)name;
- (NSInteger)age;

@end



@implementation Student

- (id) init{
    self = [super init];
    if (self){
        _name = @"超";
        _age = 28;
    }
    return self;
}

@end


//入口
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSLog(@"this is my first ocTest");
    }
    return 0;
}
