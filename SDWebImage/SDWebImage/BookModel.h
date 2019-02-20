//
//  BookModel.h
//  SDWebImage
//
//  Created by 赵超 on 2019/2/20.
//  Copyright © 2019 赵超. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface BookModel : NSObject
@property (retain, nonatomic) NSString* mBookName;
@property (retain, nonatomic) NSString* mBookPrice;
@property (retain, nonatomic) NSString* mPublisher;
@property (retain, nonatomic) NSString* mImageURL;
@end

NS_ASSUME_NONNULL_END
