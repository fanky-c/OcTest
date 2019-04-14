//
//  FourViewController.h
//  页面之间传值
//
//  Created by 赵超 on 2019/4/14.
//  Copyright © 2019 赵超. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface FourViewController : UIViewController
@property (nonatomic, strong) NSString* inputText;
@property (copy) void (^block)(NSString*);
@end

NS_ASSUME_NONNULL_END
