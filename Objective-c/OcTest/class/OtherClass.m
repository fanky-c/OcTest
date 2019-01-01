//
//  OtherClass.m
//  OcTest
//
//  Created by 赵超 on 2019/1/1.
//  Copyright © 2019 赵超. All rights reserved.
//

#import "OtherClass.h"

@implementation OtherClass
+(void) run{
    CGPoint point1 = {100, 100};
    CGPoint point2 = {200, 200};
    CGPoint point3 = {300, 300};
    NSValue *value1 = [NSValue valueWithPoint:point1];
    NSValue *value2 = [NSValue valueWithPoint:point2];
    NSValue *value3 = [NSValue valueWithPoint:point3];
    
    NSArray * array = [NSArray arrayWithObjects:value1,value2, value3, nil];
    
    for(NSValue * v in array){
        NSPoint p = [v pointValue];
        NSLog(@"x=%g,y=%g", p.x, p.y);
    }
    
    
    //简单数字类型和对象数字类型转化
    NSMutableArray * arr = [NSMutableArray arrayWithCapacity:10];
    for(int i=0;i<10;i++){
        NSNumber * number = [NSNumber numberWithInt:i+1];
        [arr addObject:number];
    }
    
    for(NSNumber *i in arr){
        NSLog(@"%d", [i intValue]);
    }
    
}
@end
