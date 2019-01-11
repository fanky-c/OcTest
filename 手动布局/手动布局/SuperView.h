//
//  SuperView.h
//  手动布局
//
//  Created by 赵超 on 2019/1/11.
//  Copyright © 2019 赵超. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface SuperView : UIView
{
    UIView* _v1;
    UIView* _v2;
    UIView* _v3;
    UIView* _v4;
}
-(void) createSubView ; 
@end

NS_ASSUME_NONNULL_END
