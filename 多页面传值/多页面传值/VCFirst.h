//
//  VCFirst.h
//  多页面传值
//
//  Created by 赵超 on 2019/2/8.
//  Copyright © 2019 赵超. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "VCSecond.h"

NS_ASSUME_NONNULL_BEGIN

@interface VCFirst : UIViewController <VCSecondDelegate>
- (void) changeColor:(UIColor *)color;
@end

NS_ASSUME_NONNULL_END
