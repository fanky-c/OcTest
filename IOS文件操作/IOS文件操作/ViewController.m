//
//  ViewController.m
//  IOS文件操作
//
//  Created by 赵超 on 2019/3/6.
//  Copyright © 2019 赵超. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    //[self getHomePath];
    [self getDocumentsPath];
}

//获取沙盒路径
- (NSString*) getHomePath{
    NSString* homePath = NSHomeDirectory();
    NSLog(@"homePath = %@", homePath);
    return homePath;
}


//获取 Documents 路径
-(NSString*) getDocumentsPath{
    //检索指定路径
    //p1:搜索的路径名称。 p2:限定在沙盒内部
    NSArray* docPath = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
    NSString* documentsPath = [docPath lastObject];
    NSLog(@"documentsPath = %@", documentsPath);
    return documentsPath;
}

@end
