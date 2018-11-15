//
//  Person.m
//  OcTest
//
//  Created by 赵超 on 2018/11/15.
//  Copyright © 2018 赵超. All rights reserved.
//

#import "Person.h"

@implementation Person

- (id) init{
    self = [super init];
    if(self){
        _name = @"小明";
        _age = 25;
    }
    return self;
}

- (void) setName:(NSString *)name{
    _name = name;
}

- (void) setAge:(NSInteger)age{
    _age = age;
}

- (void) setName:(NSString *)name andAge:(NSInteger)age{
    _name = name;
    _age = age;
}

- (NSString *)name{
    return _name;
}

- (NSInteger)age{
    return  _age;
}

- (void) print{
    NSLog(@"name = %@ age = %ld", _name, _age);
}

+ (void) testPerson{
    Person *per = [[Person alloc] init];
    [per print];
    [per setName:@"小赵" andAge:29];
    [per print];
}

@end
