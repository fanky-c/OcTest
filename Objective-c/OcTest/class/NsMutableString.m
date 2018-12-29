//
//  NsMutableString.m
//  OcTest
//
//  Created by 赵超 on 2018/12/27.
//  Copyright © 2018 赵超. All rights reserved.
//

#import "NsMutableString.h"

@implementation NsMutableString
+ (void) run{
    NSMutableString *str1 = [NSMutableString stringWithCapacity:30];
    NSLog(@"以下是NSMutableString");
    [str1 appendString:@"1"];
    [str1 appendFormat:@"%d",123];
    NSRange r = {0,2};
    [str1 replaceCharactersInRange:r withString:@"--"];
    NSLog(@"%@", str1);
    
}
@end
