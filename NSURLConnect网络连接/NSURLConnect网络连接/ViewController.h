//
//  ViewController.h
//  NSURLConnect网络连接
//
//  Created by 赵超 on 2019/2/12.
//  Copyright © 2019 赵超. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController<NSURLConnectionDelegate,NSURLConnectionDataDelegate>
{
    //定义一个url连接对象
    //按照http协议进行传输
    NSURLConnection* _connect;
    
    
    //定义一个可变的二进制数据对象，接受服务器传回的数据
    NSMutableData* _data;
}

@end

