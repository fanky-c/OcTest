//
//  Person.h
//  OcTest
//
//  Created by 赵超 on 2018/11/15.
//  Copyright © 2018 赵超. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Person : NSObject
{
    NSString *_name;
    NSInteger _age;
}

//init
- (id) init;

//setter
- (void) setName:(NSString *)name;
- (void) setAge:(NSInteger)age;
- (void) setName:(NSString *)name andAge:(NSInteger)age;


//getter
- (NSString *) name;
- (NSInteger) age;

//print
- (void) print;

//类方法
+ (void) testPerson;    


@end

NS_ASSUME_NONNULL_END
