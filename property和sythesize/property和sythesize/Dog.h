//
//  Dog.h
//  property和sythesize
//
//  Created by 赵超 on 2019/1/13.
//  Copyright © 2019 赵超. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Dog : NSObject
{
    int _age;
}

@property int age;

//以下set和get等同于 @property int age;
//- (void) setAge:(int) newAg;
//- (int) age;
@end

NS_ASSUME_NONNULL_END
