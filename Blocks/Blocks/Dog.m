//
//  Dog.m
//  Blocks
//
//  Created by 赵超 on 2019/1/18.
//  Copyright © 2019 赵超. All rights reserved.
//

#import "Dog.h"

@implementation Dog
- (id) init{
    self = [super init];
    if(self){
        _timer = [NSTimer scheduledTimerWithTimeInterval:1 target:self selector:@selector(updateTimer) userInfo:nil repeats:YES];
    }
    return self;
}

- (void) updateTimer{
    
}

-(void) dealloc{
    
}
@end
