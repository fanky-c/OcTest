//
//  Sum.m
//  OcTest
//
//  Created by 赵超 on 2018/11/18.
//  Copyright © 2018 赵超. All rights reserved.
//

#import "Sum.h"

@implementation Sum

-(int)getSum:(int)num{
    int sum = 0;
    for(int i = 0; i <= num; i++){
        sum += i;
    }
    return sum;
}

@end
