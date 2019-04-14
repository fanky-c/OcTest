//
//  ThirdViewController.h
//  页面之间传值
//
//  Created by 赵超 on 2019/4/11.
//  Copyright © 2019 赵超. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

//委托方创建协议
@protocol passValueDelegate <NSObject>
//协议定义一个传值方法
-(void) passValue:(NSString*)val;
@end


@interface ThirdViewController : UIViewController
@property (nonatomic, strong)NSString*inputText;

//外部调用协议
@property (weak) id<passValueDelegate>delegate;
@end

NS_ASSUME_NONNULL_END
