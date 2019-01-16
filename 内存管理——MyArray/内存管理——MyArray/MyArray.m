//
//  MyArray.m
//  内存管理——MyArray
//
//  Created by 赵超 on 2019/1/16.
//  Copyright © 2019 赵超. All rights reserved.
//

#import "MyArray.h"

@implementation MyArray

@synthesize count = _count;

- (id) init{
    self = [super init];
    if(self){
        _count = 0;
    }
    return self;
}

- (void) addObject:(id) object{
    if(_count > 512) return;
    _objs[_count] = object;
    //[_objs[_count] retain];
    _count++;
}

- (id) objectAtIndex:(NSUInteger) index{
    return _objs[index];
}

- (void) removeObjectAtIndex:(NSUInteger) index{
    id obj = _objs[index];
    //[obj release];
    obj = nil;
}

- (void) removeAll{
    for(int i = 0; i < _count; i++){
        [self removeObjectAtIndex:i];
    }
}

- (void) dealloc{
    NSLog(@"数组内存被释放before！！！！");
    [self removeAll];
    NSLog(@"数组内存被释放after！！！！");
    //[super dealloc];
}

@end
