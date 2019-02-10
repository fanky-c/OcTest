//
//  ViewController.m
//  解析JSON
//
//  Created by 赵超 on 2019/2/10.
//  Copyright © 2019 赵超. All rights reserved.
//

#import "ViewController.h"
#import "DataModel.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    _tableView = [[UITableView alloc] initWithFrame:self.view.bounds style:UITableViewStyleGrouped];
    _tableView.autoresizingMask = UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleHeight;
    [self.view addSubview:_tableView];
    
    //协议对象赋值
    _tableView.delegate = self;
    _tableView.dataSource = self;
    
    [self parseData];
    
}

- (void) parseData{
    //获取本地文件路径
    NSString* path = [[NSBundle mainBundle] pathForResource:@"data" ofType:@"json"];
    
    //加载json文件为二进制文件
    NSData* data = [NSData dataWithContentsOfFile:path];
    
    //将json解析为字典格式
    NSDictionary* dictRoot = [NSJSONSerialization JSONObjectWithData:data options:NSJSONReadingMutableContainers error:nil];
    
    //判断是否为返回字典
    if([dictRoot isKindOfClass:[NSDictionary class]] == YES){
       _arrayData = [[NSMutableArray alloc] init];
        NSArray* entry = [dictRoot objectForKey:@"entry"];
        for (int i=0; i<entry.count; i++) {
            NSString* bookName = [[entry objectAtIndex:i] objectForKey:@"title"];
            NSString* bookPrice = [[entry objectAtIndex:i] objectForKey:@"price"];
            
            dataModel* data = [[dataModel alloc] init];
            data.mBookName = bookName;
            data.mBookPrice = bookPrice;
            
            //把dataModel存放到数组中
            [_arrayData addObject:data];
        }
    }
    
    
    [_tableView reloadData];
}

- (NSInteger) numberOfSectionsInTableView:(UITableView *)tableView{
    return 1;
}

- (NSInteger) tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return _arrayData.count;
}

- (UITableViewCell*) tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    NSString* ID = @"cell";
    UITableViewCell* cell = [_tableView dequeueReusableCellWithIdentifier:ID];
    if(cell == nil){
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:ID];
    }
    
    dataModel* Data = [_arrayData objectAtIndex:indexPath.row];
    
    cell.textLabel.text = Data.mBookName;
    cell.detailTextLabel.text = Data.mBookPrice;
    
    return cell;
}


@end
