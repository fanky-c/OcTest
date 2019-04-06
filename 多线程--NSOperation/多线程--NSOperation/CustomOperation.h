//
//  CustomOperation.h
//  多线程--NSOperation
//
//  Created by 赵超 on 2019/4/6.
//  Copyright © 2019 赵超. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface CustomOperation : NSOperation
-(instancetype)initName:(NSString*)name;
@property (nonatomic, strong) NSString* operationName;
@property BOOL over;
@end

NS_ASSUME_NONNULL_END
