//
//  Person.h
//  协议代理模式
//
//  Created by 赵超 on 2019/1/17.
//  Copyright © 2019 赵超. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Dog.h"

NS_ASSUME_NONNULL_BEGIN

@interface Person : NSObject <DogBark>
{
    Dog* _dog;
}

@property(retain) Dog* dog;

@end

NS_ASSUME_NONNULL_END
