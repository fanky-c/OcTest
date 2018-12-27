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
    NSRange rang = [str6 rangeOfString:@"1"];
    NSLog(@"字符串有1的字符串个数：%d， 位置在：%d", rang.length, rang.location);
    
    if(rang.location == NSNotFound){
        NSLog(@"没有");
    }else{
        NSLog(@"有");
    }
    
    //字符串比较
    NSString * str7 = @"123";
    if([str7 isEqualToString:@"123"]){
        NSLog(@"相等");
    }else{
        NSLog(@"不相等");
    }
    
    //字符串转换为数值
    NSString * str8 = @"123";
    int a = [str8 intValue];
    double b = [str8 doubleValue];
    NSLog(@"转换为数值为：%d", a);
    
    //字符串是否以什么字符串开头和结尾
    NSString * str9 = @"1.2.3test";
    BOOL hasPrefix = [str9 hasPrefix:@"1"];
    if(hasPrefix){
        NSLog(@"是以1开头");
    }
    
    BOOL hasSuffix = [str9 hasSuffix:@"test"];
    if(hasSuffix){
        NSLog(@"是以test结束");
    }
    
    //提取子串
    NSString * str10 = @"123.4test";
    NSLog(@"substringFromIndex:%@", [str10 substringFromIndex:1]);
    NSLog(@"substringToIndex:%@", [str10 substringToIndex:3]);
    NSRange rang1 = {0, 3};
    NSLog(@"substringWithRange:%@", [str10 substringWithRange:rang1]);
    
    //倒序提取字符串
    NSString * srt11 = @"123456";
    NSRange rang2 = {0 , 1};
    for(long i = srt11.length-1;i>=0; i--){
        rang2.location = i;
        NSLog(@"%@", [srt11 substringWithRange:rang2]);
    }
    
    //字符串的长度
    NSString * str11 = @"我是1test";
    NSLog(@"长度为：%lu, %lu",[str11 length], [str11 lengthOfBytesUsingEncoding:NSUTF8StringEncoding]);
    
    //判断字符串是否包含某个字符串
    NSString * str12 = @"我是超人1";
    NSString * _str12 = @"超人1";
    NSRange rang3 = [str12 rangeOfString:_str12];
    NSLog(@"包含的长度：%lu，位置是：%lu", rang3.length, rang3.location);
    if(rang3.location == NSNotFound){
        NSLog(@"没有发现当前字符:%@", _str12);
    }else{
        NSLog(@"发现当前字符:%@", _str12);
    }
}
@end
