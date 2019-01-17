//
//  MyTest.h
//  协议
//
//  Created by 赵超 on 2019/1/17.
//  Copyright © 2019 赵超. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "MyProtocal.h"

NS_ASSUME_NONNULL_BEGIN

@interface MyTest : NSObject <MyProtocal>

- (void) showInfo;

@end

NS_ASSUME_NONNULL_END
