//
//  Shape.m
//  OcTest
//
//  Created by 赵超 on 2018/11/23.
//  Copyright © 2018 赵超. All rights reserved.
//

#import "Shape.h"

@implementation Shape
- (id) init{
    self = [super init];
    if(self){
        width = 0;
        height = 0;
    }
    return self;
}

- (id) initWithWidth:(int)_width initWithHeight:(int)_height{
    self = [super init];
    if(self){
        width = _width;
        height = _height;
    }
    return self;
}

- (int) area{
    return width * height;
}

@end
