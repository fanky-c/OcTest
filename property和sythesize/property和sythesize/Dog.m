//
//  Dog.m
//  property和sythesize
//
//  Created by 赵超 on 2019/1/13.
//  Copyright © 2019 赵超. All rights reserved.
//

#import "Dog.h"

@implementation Dog


@synthesize age = _age;

// 以下set和get等同于 @synthesize age = _age;
//- (void) setAge:(int)newAg{
//    _age = newAg;
//}
//
//- (int) age{
//    return _age;
//}

@end
