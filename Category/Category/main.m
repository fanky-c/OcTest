//
//  main.m
//  Category
//
//  Created by 赵超 on 2019/1/18.
//  Copyright © 2019 赵超. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "NSString+ReverseString.h"
#import "Foo.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
       // NSLog(@"Hello, World!");
        
        NSString* str = @"我爱中国人love you!!!";
        NSLog(@"%@", [str reverse]);
    }
    return 0;
}
