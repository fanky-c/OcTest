//
//  dataModel.h
//  解析JSON
//
//  Created by 赵超 on 2019/2/10.
//  Copyright © 2019 赵超. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface dataModel : NSObject
{
    NSString* _bookName;
    NSString* _bookPrice;
}

@property (retain, nonatomic) NSString* mBookName;
@property (retain, nonatomic) NSString* mBookPrice;
@end

NS_ASSUME_NONNULL_END
