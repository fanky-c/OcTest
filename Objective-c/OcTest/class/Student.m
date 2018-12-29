//
//  Student.m
//  OcTest
//
//  Created by 赵超 on 2018/11/18.
//  Copyright © 2018 赵超. All rights reserved.
//

#import "Student.h"

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
