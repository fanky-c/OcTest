//
//  VCImageShow.h
//  照片墙
//
//  Created by 赵超 on 2019/1/28.
//  Copyright © 2019 赵超. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface VCImageShow : UIViewController

//图像视图view，这个是不行的因为view对象传递会把自己从父视图中给删除掉。
@property (nonatomic, retain) UIImageView* imageView;

//图像对象
@property (nonatomic, retain) UIImage* image;

//图像视图tag
@property (nonatomic, assign) NSUInteger imageTag;

@end

NS_ASSUME_NONNULL_END
