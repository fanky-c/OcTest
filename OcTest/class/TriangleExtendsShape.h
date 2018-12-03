//
//  TriangleExtendsShape.h
//  OcTest
//
//  Created by 赵超 on 2018/12/3.
//  Copyright © 2018 赵超. All rights reserved.
//

#import "Shape.h"

NS_ASSUME_NONNULL_BEGIN

@interface TriangleExtendsShape : Shape
-(id) initWithBottom:(int)_bottom initWithHeight:(int)_height;
-(double) area;
@end

NS_ASSUME_NONNULL_END
