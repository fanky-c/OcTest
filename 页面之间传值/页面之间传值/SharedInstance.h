//
//  SharedInstance.h
//  页面之间传值
//
//  Created by 赵超 on 2019/4/11.
//  Copyright © 2019 赵超. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface SharedInstance : NSObject
@property (nonatomic, strong) NSString* str;
+(instancetype)sharedInstance;
@end

NS_ASSUME_NONNULL_END
