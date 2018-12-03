//
//  CircleExtendsShape.m
//  OcTest
//
//  Created by 赵超 on 2018/12/3.
//  Copyright © 2018 赵超. All rights reserved.
//

#import "CircleExtendsShape.h"

@implementation CircleExtendsShape
-(id) initWithRadius:(int)_radius{
    self = [super initWithWidth:_radius initWithHeight:_radius];
    return self;
}

-(double) area{
    double sum = 0.0;
    return M_PI * width * height * 1.0;
}


@end
