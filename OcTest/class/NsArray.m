//
//  NsArray.m
//  OcTest
//
//  Created by 赵超 on 2018/12/6.
//  Copyright © 2018 赵超. All rights reserved.
//

#import "NsArray.h"

@implementation NsArray
-(void) circle{
    //NSArray * array = @[@"10", @"20", @"30"]; //静态数组，NSArrat保存为对象
    //NSArray * array = [NSArray arrayWithObjects:@"10", @"11",@"12",@"13",nil];
    NSArray * array = [[NSArray alloc] initWithObjects:@1,@2,@3, nil]; //@1 保存了数值
    //NSLog(@"当前数组的个数：%ld", [array count]);
    
    for(int i = 0; i < [array count]; i++){
        NSLog(@"当前元素：%@；索引值：%d", array[i], i);
    }
    
    for (NSString * str in array){
        NSLog(@"当前元素：%@", str);
    }
    
}

-(void) mutaleCircle{
    //NSMutableArray * array = @[@"1", @"2", @"3", @"4"];
    NSMutableArray * array = [NSMutableArray arrayWithCapacity:20];
    for(int i = 0; i < 20; i++){
        [array addObject:[NSString stringWithFormat:@"%d", i+1]];
    }
    for(int i = 0; i < [array count]; i++){
        NSLog(@"当前元素：%@；索引值：%d", array[i], i);
    }
}
@end
