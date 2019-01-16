//
//  main.m
//  内存管理——MyArray
//
//  Created by 赵超 on 2019/1/16.
//  Copyright © 2019 赵超. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Dog.h"
#import "MyArray.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
    
    #if 0
        NSMutableArray* array = [[NSMutableArray alloc] init];
        for(int i = 0; i < 4; i++){
            Dog* dog = [[Dog alloc] init];
            [dog setID:i];
            [array addObject:dog];
            //[dog release];
        }
        
        for(Dog* dog in array){
            NSLog(@"dog is %d",dog.ID);
        }
        //[array release]
    #endif
        
        MyArray* myArray = [[MyArray alloc] init];
        for(int i = 0; i < 4; i++){
            Dog* dog = [[Dog alloc] init];
            [dog setID:i];
            [myArray addObject:dog];
            //[dog release];
        }
        //[MyArray release];
        
    }
    return 0;
}
