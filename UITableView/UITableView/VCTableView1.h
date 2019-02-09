//
//  VCTableView1.h
//  UITableView
//
//  Created by 赵超 on 2019/2/9.
//  Copyright © 2019 赵超. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

//UITableViewDelegate 实现数据视图普通协议
//UITableViewDataSource 实现数据视图数据代理协议
@interface VCTableView1 :  UIViewController<UITableViewDelegate, UITableViewDataSource>
{
    //定义一个数据视图对象
    //数据视图用来显示大量数据格式的信息视图
    //例如：通讯录、盆友圈、qq好友
    UITableView* _tableView;
}

@end

NS_ASSUME_NONNULL_END
