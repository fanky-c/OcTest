//
//  Triangle.m
//  OcTest
//
//  Created by 赵超 on 2018/11/20.
//  Copyright © 2018 赵超. All rights reserved.
//

#import "Triangle.h"

@implementation Triangle

-(void)setWidth:(int)width{
    self->width = width;
}

-(void)setHeight:(int)height{
    self->height = height;
}

-(double)area{
    return height * width / 2;
}

+(id)creatReact{
    return [[[self class] alloc] init];
}

@end
