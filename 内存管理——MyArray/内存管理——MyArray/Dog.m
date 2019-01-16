//
//  Dog.m
//  内存管理——MyArray
//
//  Created by 赵超 on 2019/1/16.
//  Copyright © 2019 赵超. All rights reserved.
//

#import "Dog.h"

@implementation Dog
@synthesize ID = _ID;
- (void)dealloc{
    NSLog(@"dog 内存被释放！！！");
    //[super dealloc];
}
@end
