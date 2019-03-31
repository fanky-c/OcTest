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
    //[self getDocumentsPath];
    //[self getLibraryPath];
    //[self getTemPath];
    //[self parsePath];
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


//获取Library路径
-(NSString*) getLibraryPath{
    NSArray* libPaths = NSSearchPathForDirectoriesInDomains(NSLibraryDirectory, NSUserDomainMask, YES);
    NSString* libraryPath = [libPaths firstObject];
    NSLog(@"libraryPath = %@", libraryPath);
    return libraryPath;
}

//获取temporary临时路径
-(NSString*) getTemPath{
    NSString* temporaryPath = NSTemporaryDirectory();
    NSLog(@"temporaryPath = %@", temporaryPath);
    return temporaryPath;
}

//路径文件操作
-(void) parsePath{
    NSString* path = @"/Users/zhaochao/Library/Developer/CoreSimulator/Devices/F3D48D8F-8135-4626-BD67-CBCF36B81943/data/Containers/Data/Application/58F62260-68F7-4F2C-982B-ECA96A2C8D64/tmp/test.png";
    
    //获取路径的各个组成部分
    NSArray *array = [path pathComponents];
    NSLog(@"pathComponents = %@", array);
    
    //提取路径最后一个组成部分
    NSString* lastName = [path lastPathComponent];
    NSLog(@"lastName = %@", lastName);
    
    //删除路径最后一部分
    NSString * string = [path stringByDeletingLastPathComponent];
    NSLog(@"lastPath = %@", string);
    
    //追加内容到路径中
    NSString* addString = [string stringByAppendingPathComponent:@"name.json"];
    NSLog(@"addString = %@", addString);
}


//数据转换
-(void) dataChange:(NSData*) data{
    //NSData -> NSString
    NSString* aString = [[NSString alloc] initWithData:data encoding:NSUTF8StringEncoding];
    
    //NSString -> NSData
    NSData* aData = [aString dataUsingEncoding:NSUTF8StringEncoding];
    
    //NSData -> UIImage (aData在这里是个例子，因为t它本身就不是图片)
    UIImage* image = [UIImage imageWithData:aData];
    
    
    //UIImage -> NSData()  //UIImageJPEGRepresentation
    NSData* data2 = UIImagePNGRepresentation(image);
    
}

@end
