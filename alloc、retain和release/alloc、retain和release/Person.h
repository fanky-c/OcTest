//
//  Person.h
//  alloc、retain和release
//
//  Created by 赵超 on 2019/1/14.
//  Copyright © 2019 赵超. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Dog.h"

NS_ASSUME_NONNULL_BEGIN

@interface Person : NSObject
{
    Dog* _dog;
}
- (void) setDog:(Dog *)dog;
- (Dog *) dog;
@end

NS_ASSUME_NONNULL_END
