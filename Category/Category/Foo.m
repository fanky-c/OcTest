//
//  Foo.m
//  Category
//
//  Created by 赵超 on 2019/1/18.
//  Copyright © 2019 赵超. All rights reserved.
//

#import "Foo.h"

@interface Foo ()
//- (void) test2;
@end

@implementation Foo

- (void) test{
    [self test2];
}

- (void) test2{
    NSLog(@"this is test2");
}
@end
