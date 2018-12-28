//
//  NsSet.m
//  OcTest
//
//  Created by 赵超 on 2018/12/28.
//  Copyright © 2018 赵超. All rights reserved.
//

#import "NsSet.h"

@implementation NsSet
+(void)run{
    //集合里面的内容不能重复,必须唯一
    NSSet * set = [NSSet setWithObjects:@"1",@"1",@"5",@"2",@"4",nil];
    for(NSString *str in set){
        NSLog(@"集合里面的值：%@",str);
    }
    
    //集合排序
    NSArray *arr = [set allObjects]; //转换为数组
    arr = [arr sortedArrayUsingSelector:@selector(compare:)];
    for(NSString *str in arr){
        NSLog(@"集合里面排序的值：%@",str);
    }
    
    //动态集合
    NSMutableSet *set1 = [NSMutableSet setWithCapacity:20];
    [set1 addObject:@"1"];
    [set1 addObject:@"2"];
    [set1 removeObject:@"1"];
    NSLog(@"动态集合：%@", set1);
}
@end
