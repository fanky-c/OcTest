//
//  ViewController.m
//  NSURLConnect网络连接
//
//  Created by 赵超 on 2019/2/12.
//  Copyright © 2019 赵超. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    UIButton* btn = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    btn.frame = CGRectMake(100, 200, 150, 40);
    [btn setTitle:@"获取网络数据" forState:UIControlStateNormal];
    [btn addTarget:self action:@selector(press:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn];
    
    _data = [[NSMutableData alloc] init];
    
}

- (void)press:(id)btn{

    //定义一个字符串网址
    NSString* strUrl = @"http://www.baidu.com";
    
    //将字符串转换为一个地址链接对象
    NSURL* url = [NSURL URLWithString:strUrl];
    
    
    //定义一个连接请求
    NSURLRequest* request = [NSURLRequest requestWithURL:url];
    
    //创建一个网络连接对象
    _connect = [NSURLConnection connectionWithRequest:request delegate:self];
    
}

//错误
- (void) connection:(NSURLConnection *)connection didFailWithError:(NSError *)error{
    NSLog(@"连接error = %@",error);
}

//响应状态
-(void) connection:(NSURLConnection *)connection didReceiveResponse:(NSURLResponse *)response{
    NSHTTPURLResponse* res = (NSHTTPURLResponse*) response;
    if(res.statusCode == 200){
        NSLog(@"连接成功！");
    }else if(res.statusCode == 404){
        
    }else if(res.statusCode == 500){
        
    }
}

- (void) connection:(NSURLConnection *)connection didReceiveData:(NSData *)data{
    //每次回传数据连接起来
    [_data appendData:data];
}

- (void)connectionDidFinishLoading:(NSURLConnection *)connection{
    //将w二进制数据转化为字符串数据
    NSString* strData = [[NSString alloc] initWithData:_data encoding:NSUTF8StringEncoding];
    NSLog(@"%@",strData);
}

@end
