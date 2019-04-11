//
//  SharedInstance.m
//  页面之间传值
//
//  Created by 赵超 on 2019/4/11.
//  Copyright © 2019 赵超. All rights reserved.
//

#import "SharedInstance.h"


@implementation SharedInstance

@synthesize str;

+(instancetype)sharedInstance{
    static SharedInstance* _sharedInstance;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _sharedInstance = [[SharedInstance alloc] init];
    });
    
    return _sharedInstance;
}
@end
