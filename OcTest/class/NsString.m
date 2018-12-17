//
//  NsString.m
//  OcTest
//
//  Created by 赵超 on 2018/12/15.
//  Copyright © 2018 赵超. All rights reserved.
//

#import "NsString.h"

@implementation NsString

//NSString(静态) 和 NSMutableString(动态)

-(void) run{
    //c串转换为oc串
    char * cstr = "test123"; //c对象字符串
    NSString * str = [NSString stringWithCharacters:cstr length:strlen(cstr)];
    NSLog(@"c串转换为oc串：%@", str);
    
    //直接赋值
    NSString * str1 = @"test123";
    NSLog(@"直接赋值：%@", str1);
    
    //工厂行为数值转换为字符串初始化，会自动释放内存
    NSString * str2 = [NSString stringWithFormat:@"%d", 123];
    NSLog(@"工厂行为数值转换为字符串初始化：%@", str2);
    
    //对象实例化，要手动释放内存
    NSString * str3 = [[NSString alloc] initWithFormat:@"%d", 123];
    NSLog(@"对象实例化：%@", str3);
    
    //转换为大小写 uppercaseString lowercaseString
    NSString * str4 = @"abc";
    str4 = [str4 uppercaseString];
    NSLog(@"大写字符串：%@", str4);
    
    //字符的个数
    NSString * str5 = @"我123";
    NSLog(@"当前字符的个数：%u" , [str5 lengthOfBytesUsingEncoding:NSUTF8StringEncoding]);
    
    //判断字符串的子串
    NSString * str6 = @"123";
    NSRange rang = [str6 rangeOfString:@"10"];
    NSLog(@"字符串有1的字符串个数：%d， 位置在：%d", rang.length, rang.location);
    
    if(rang.location == NSNotFound){
        NSLog(@"没有");
    }else{
        NSLog(@"有");
    }
}
@end
