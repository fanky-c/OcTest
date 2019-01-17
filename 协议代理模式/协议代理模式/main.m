//
//  main.m
//  协议代理模式
//
//  Created by 赵超 on 2019/1/17.
//  Copyright © 2019 赵超. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"
#import "Dog.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        
        Dog* dog = [[Dog alloc] init];
        dog.ID = 10;
        
        Person* xiaoLi = [[Person alloc] init];
        [xiaoLi setDog:dog];
        
        while(YES){
            [[NSRunLoop currentRunLoop] run];
        }
        
        
    }
    return 0;
}
