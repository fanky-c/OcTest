//
//  MyTest.m
//  协议
//
//  Created by 赵超 on 2019/1/17.
//  Copyright © 2019 赵超. All rights reserved.
//

#import "MyTest.h"

@implementation MyTest

- (void) showInfo{
    NSLog(@"show info is calling");
}

//- (void) print:(int) value{
//    NSLog(@"print value is %d", value);
//}

- (int) printValue:(int) value1 andValue:(int) value2{
    NSLog(@"print value1 is %d; value2 is %d", value1, value2);
    return 0;
}

@end
