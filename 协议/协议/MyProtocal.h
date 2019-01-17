//
//  MyProtocal.h
//  协议
//
//  Created by 赵超 on 2019/1/17.
//  Copyright © 2019 赵超. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@protocol MyProtocal <NSObject>

//print:可以实现也可以不实现的协议接口
@optional
- (void) print:(int) value;

//printValue:andValue:必须实现的协议接口
@required
- (int) printValue:(int) value1 andValue:(int) value2;

@end

NS_ASSUME_NONNULL_END
