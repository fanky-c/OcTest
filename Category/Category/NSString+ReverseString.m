//
//  NSString+ReverseString.m
//  Category
//
//  Created by 赵超 on 2019/1/18.
//  Copyright © 2019 赵超. All rights reserved.
//

#import "NSString+ReverseString.h"

@implementation NSString (ReverseString)
- (id) reverse{
    NSUInteger len = [self length];
    NSMutableString* retStr = [NSMutableString stringWithCapacity:len];
    
    while (len > 0) {
        unichar c = [self characterAtIndex:--len];
        NSString* s = [NSString stringWithFormat:@"%C", c];
        [retStr appendString:s];
    }
    return retStr;
}
@end
