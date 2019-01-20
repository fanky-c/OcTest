//
//  main.m
//  Blocks
//
//  Created by 赵超 on 2019/1/18.
//  Copyright © 2019 赵超. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        //定义myBlocks方法
        void (^myBlocks) (void) = NULL;
        myBlocks = ^(void){
            NSLog(@"in blocks");
        };
        
        //调用myBlocks方法
        myBlocks();
        
        int (^myBlock1) (int a, int b) = ^(int a, int b){
            int sum = a + b;
            return sum;
        };
        
        NSLog(@"sum %d", myBlock1(10, 11.7));
        
    }
    return 0;
}
