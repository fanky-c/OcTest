//
//  TriangleExtendsShape.m
//  OcTest
//
//  Created by 赵超 on 2018/12/3.
//  Copyright © 2018 赵超. All rights reserved.
//

#import "TriangleExtendsShape.h"

@implementation TriangleExtendsShape
-(id) initWithBottom:(int)_bottom initWithHeight:(int)_height
{
    self = [super initWithWidth:_bottom initWithHeight:_height];
    return self;
}

-(double) area{
    return width * height / 2 * 1.0;
}

@end
