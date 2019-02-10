//
//  VCTableView3.h
//  UITableView
//
//  Created by 赵超 on 2019/2/10.
//  Copyright © 2019 赵超. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface VCTableView3 : UIViewController<UITableViewDelegate,UITableViewDataSource>
{
    UITableView* _tableView;
    NSMutableArray* _arrayData;
    
    //
    UIBarButtonItem* _btnEdit;
    UIBarButtonItem* _btnFinish;
    UIBarButtonItem* _btnDelete;
    
    //是否在编辑
    BOOL _isEdit;
}
@end

NS_ASSUME_NONNULL_END
