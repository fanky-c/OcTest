//
//  MyArray.h
//  内存管理——MyArray
//
//  Created by 赵超 on 2019/1/16.
//  Copyright © 2019 赵超. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface MyArray : NSObject
{
    NSUInteger _count;
    id _objs[512];
}

@property(assign) NSUInteger count;
- (void) addObject:(id)object;
- (id) objectAtIndex:(NSUInteger) index;
- (void) removeObjectAtIndex:(NSUInteger) index;
- (void) removeAll;

@end

NS_ASSUME_NONNULL_END
