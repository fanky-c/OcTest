//
//  Person.m
//  alloc、retain和release
//
//  Created by 赵超 on 2019/1/14.
//  Copyright © 2019 赵超. All rights reserved.
//

#import "Person.h"

@implementation Person

- (void) setDog:(Dog *)dog{
    if(_dog != dog){
        _dog = dog;
        //[_dog retain];  //让_dog的计数器+1  Xcode4.2(iOS 5)以后启用了ARC技术
    }
}

- (Dog *) dog{
    return _dog;
}

- (void) dealloc{
    NSLog(@"Person is dealloc");
    //[observer unregisterObject:self];
    //[super dealloc];  //Xcode4.2(iOS 5)以后启用了ARC技术
}

@end
