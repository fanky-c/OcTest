//
//  NsDictionary.m
//  OcTest
//
//  Created by 赵超 on 2018/12/28.
//  Copyright © 2018 赵超. All rights reserved.
//

#import "NsDictionary.h"

@implementation NsDictionary
+(void) run{
    //NSDictionary * dict = @{@"age":@"12",@"name":@"chao"};
    //NSDictionary *dict = [NSDictionary dictionaryWithObjectsAndKeys:@"12",@"age",@"chao",@"name", nil]; //注意key、value是相反
    NSDictionary * dict = [NSDictionary dictionaryWithObjectsAndKeys:@"12",@"age",@"chao",@"name", nil];
    NSArray * allkeys = [dict allKeys];
    for(NSString *str in allkeys){
        NSLog(@"key=%@,vaule=%@", str, [dict objectForKey:str]);
    }
    
    
    //动态字典
    NSMutableDictionary * dict1 = [[NSMutableDictionary alloc] initWithCapacity:20];
    [dict1 setObject:@"chao" forKey:@"name"];
    [dict1 setObject:@"12" forKey:@"age"];
    NSArray * allkeys1 = [dict1 allKeys];
    for(NSString *str in allkeys1){
        NSLog(@"动态：key=%@,vaule=%@", str, [dict objectForKey:str]);
    }
}
@end
