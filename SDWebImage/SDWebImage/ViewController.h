//
//  ViewController.h
//  SDWebImage
//
//  Created by 赵超 on 2019/2/18.
//  Copyright © 2019 赵超. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController<UITableViewDelegate,UITableViewDataSource>
{
    UITableView* _tableView;
    NSMutableArray* _arrayData;
    UIBarButtonItem* _btnLoadData;
}

@end

