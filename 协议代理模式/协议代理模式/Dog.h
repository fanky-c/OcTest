//
//  Dog.h
//  协议代理模式
//
//  Created by 赵超 on 2019/1/17.
//  Copyright © 2019 赵超. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

//前项声明定义协议，不然会报错
//@class 前项声明类
@protocol DogBark;

@interface Dog : NSObject
{
    int _ID;
    NSTimer* _timer;
    int _barkCount;
    id <DogBark> _delegate; //owner dog的拥有者 存放dog主任
}

@property(assign) int ID;
@property id <DogBark> delegate;
@property int barkCount;

@end

//定义协议
@protocol DogBark <NSObject>

- (void) bark:(Dog *)thisDog count:(int)count;

@end

NS_ASSUME_NONNULL_END
