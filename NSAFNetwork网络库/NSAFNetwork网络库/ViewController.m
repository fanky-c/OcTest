//
//  ViewController.m
//  NSAFNetwork网络库
//
//  Created by 赵超 on 2019/2/16.
//  Copyright © 2019 赵超. All rights reserved.
//

#import "ViewController.h"
#import "AFNetworking.h"

@interface ViewController ()

@end


@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    [self createUI];
    [self getNetworkState];
    [self get];

}

-(void) createUI{
    UIButton* btn = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    btn.frame = CGRectMake(100, 100, 100, 40);
    [btn setTitle:@"网络请求" forState:UIControlStateNormal];
    [btn addTarget:self action:@selector(pressBtn) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn];
}

-(void) pressBtn{
    [self down];
}

-(void) get{
    AFHTTPSessionManager *manager = [AFHTTPSessionManager manager];
    NSString* url = @"http://dict.youdao.com/jsonapi";
    NSDictionary* dict = @{@"q":@"add",@"doctype":@"json",@"keyfrom":@"mac.main",@"id":@"270CD04CD0FD40F8FEEB6306FA85223D",@"vendor":@"appstore",@"appVer":@"2.5",@"client":@"macdict",@"jsonversion":@"2"};
    
    //设置数据接收类型
    //manager.responseSerializer.acceptableContentTypes = [manager.responseSerializer.acceptableContentTypes setByAddingObject:@"text/html"];
    
    // 设置超时时间
    //[manager.requestSerializer willChangeValueForKey:@"timeoutInterval"];
    //manager.requestSerializer.timeoutInterval = 6.0;
    //[manager.requestSerializer didChangeValueForKey:@"timeoutInterval"];
    
    [manager GET:url parameters:dict progress:^(NSProgress * _Nonnull downloadProgress) {
        NSLog(@"进度 = %@",downloadProgress);
    } success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
        NSLog(@"返回数据 = %@",responseObject);
    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
        if(error.code == -1001){
            NSLog(@"请求超时");
        }else{
            NSLog(@"失败");
        }
    }];
}

-(void) down{
    // 1.创建一个管理者
    AFHTTPSessionManager *manager = [AFHTTPSessionManager manager];
    
    // 2. 创建请求对象
    NSURL *url = [NSURL URLWithString:@"http://pic.sc.chinaz.com/files/pic/pic9/201610/apic23847.jpg"];
    NSURLRequest *request =[NSURLRequest requestWithURL:url];
    
    // 3. 下载文件
    NSURLSessionDownloadTask *downloadTask = [manager downloadTaskWithRequest:request progress:^(NSProgress * _Nonnull downloadProgress) {
        // downloadProgress.completedUnitCount 当前下载大小
        // downloadProgress.totalUnitCount 总大小
        NSLog(@"%f", 1.0 * downloadProgress.completedUnitCount / downloadProgress.totalUnitCount);
    } destination:^NSURL * _Nonnull(NSURL * _Nonnull targetPath, NSURLResponse * _Nonnull response) {
        // targetPath  临时存储地址
        NSLog(@"targetPath:%@",targetPath);
        NSString *path =[NSSearchPathForDirectoriesInDomains(NSCachesDirectory, NSUserDomainMask, YES) lastObject];
        NSString *filePath = [path stringByAppendingPathComponent:response.suggestedFilename];
        NSURL *url = [NSURL fileURLWithPath:filePath];
        NSLog(@"path:%@",filePath);
        // 返回url 我们想要存储的地址
        // response 响应头
        return url;
    } completionHandler:^(NSURLResponse * _Nonnull response, NSURL * _Nullable filePath, NSError * _Nullable error) {
        // 下载完成之后调用
        // response 响应头
        // filePath 下载存储地址
        NSLog(@"filePath:%@",filePath);
    }];
    
    //4. 需要手动开启
    [downloadTask resume];
}


//获取网络状态
-(void) getNetworkState{
    AFNetworkReachabilityManager* manger = [AFNetworkReachabilityManager sharedManager];
    [manger setReachabilityStatusChangeBlock:^(AFNetworkReachabilityStatus status) {
        switch (status) {
            case AFNetworkReachabilityStatusUnknown:
                NSLog(@"未知");
                break;
            case AFNetworkReachabilityStatusNotReachable:
                NSLog(@"没有网络");
                break;
            case AFNetworkReachabilityStatusReachableViaWWAN:
                NSLog(@"3G、4G");
                break;
            case AFNetworkReachabilityStatusReachableViaWiFi:
                NSLog(@"wifi");
                break;
            default:
                break;
        }
    }];
    
    //开启
    [manger startMonitoring];
}

@end
