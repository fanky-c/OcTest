//
//  VCTableView2.h
//  UITableView
//
//  Created by 赵超 on 2019/2/9.
//  Copyright © 2019 赵超. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface VCTableView2 : UIViewController<UITableViewDelegate,UITableViewDataSource>
{
    UITableView* _tableview;
    NSMutableArray* _arrayData;
}
@end

NS_ASSUME_NONNULL_END
