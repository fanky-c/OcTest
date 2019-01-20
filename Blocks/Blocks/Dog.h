//
//  Dog.h
//  Blocks
//
//  Created by 赵超 on 2019/1/18.
//  Copyright © 2019 赵超. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Dog : NSObject
{
    int _ID;
    int _barkCount;
    NSTimer* _timer;
}

@property int ID;


@end

NS_ASSUME_NONNULL_END
