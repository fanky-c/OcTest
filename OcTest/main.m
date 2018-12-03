//
//  main.m
//  OcTest
//
//  Created by 赵超 on 2018/11/12.
//  Copyright © 2018 赵超. All rights reserved.
//
#import <Foundation/Foundation.h>
#import "class/Person.h"
#import "class/Student.h"
#import "class/Sum.h"
#import "class/Triangle.h"

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
        
        //调用Student类方法
        [Student testStudent];
        
        //调用Person testPerson类方法
        [Person testPerson];
        
        //调用Sum
        Sum *sum = [[Sum alloc] init]; //alloc分配内存空间
        NSLog(@"当前的累加结果是：%d" , [sum getSum:100]);
        
        
        //调用Triangle
        Triangle * tri = [[Triangle alloc] init];
        [tri setHeight:10];
        [tri setWidth:10];
        NSLog(@"三角形的面积是：%g", [tri area]);
        
        //用类自身创建对象
        Triangle * tri1 = [Triangle creatReact];
        [tri1 setHeight:10];
        [tri1 setWidth:10];
        NSLog(@"三角形的面积是：%g", [tri1 area]);
        
        
    }
    return 0;
}
