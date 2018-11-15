//
//  main.m
//  OcTest
//
//  Created by 赵超 on 2018/11/12.
//  Copyright © 2018 赵超. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"


//NSObject 基类(根类)
@interface Student : NSObject
{
    //实例变量
    NSString *_name;
    NSInteger _age;
}

//构造方法(初始化对象方法)
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

//类方法,给类调用
//testStudent 测试学生类是否可用
+ (void)testStudent;

@end



@implementation Student

- (id)init{
    self = [super init];
    if (self){
        _name = @"超";
        _age = 28;
    }
    return self;
}

- (void)setName:(NSString *)name{
    _name = name;
}

- (void)setAge:(NSInteger)age{
    _age = age;
}

- (void)setName:(NSString *)name andAge:(NSInteger)age{
    _name = name;
    _age = age;
}

- (NSString *)name{
    return _name;
}

- (NSInteger)age{
    return _age;
}

+ (void)testStudent{
    Student *stu = [[Student alloc] init];
    [stu setName:@"小胡" andAge:20];
    NSLog(@"name=%@, age=%li", [stu name], [stu age]);
}

@end


//入口
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Student *stu = [[Student alloc] init];
        NSLog(@"name = %@, age = %li", [stu name], [stu age]); //name = 超, age = 28
        
        //使用实例ssetter方法
        [stu setName:@"小马"];  //@"小马" 表示oc字符串对象
        [stu setAge:12];
        NSLog(@"name = %@, age = %li", [stu name], [stu age]); //name = 小马, age = 12
        [stu setName:@"小赵" andAge: 11];
        NSLog(@"name = %@, age = %li", [stu name], [stu age]); //name = 小赵, age = 11
        
        //调用类方法
        [Student testStudent];
        
        //调用Person testPerson类方法
        [Person testPerson];
    }
    return 0;
}
