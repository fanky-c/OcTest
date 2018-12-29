//
//  Shape.h
//  OcTest
//
//  Created by 赵超 on 2018/11/23.
//  Copyright © 2018 赵超. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Shape : NSObject
{
    int width;
    int height;
}
-(id) initWithWidth:(int)_width initWithHeight:(int)_height;
-(int) area;
@end

NS_ASSUME_NONNULL_END
