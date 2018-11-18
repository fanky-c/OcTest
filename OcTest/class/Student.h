//
//  Student.h
//  OcTest
//
//  Created by 赵超 on 2018/11/18.
//  Copyright © 2018 赵超. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

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

NS_ASSUME_NONNULL_END
