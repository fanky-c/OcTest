//
//  ViewController.m
//  SDWebImage
//
//  Created by 赵超 on 2019/2/18.
//  Copyright © 2019 赵超. All rights reserved.
//

#import "ViewController.h"
#import "AFNetworking.h"
#import "UIImageView+WebCache.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    _tableView = [[UITableView alloc] initWithFrame:self.view.bounds style:UITableViewStyleGrouped];
    
    _tableView.autoresizingMask = UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleHeight;
    
    [self.view addSubview:_tableView];
    
    _tableView.delegate = self;
    _tableView.dataSource = self;
    
    //创建更新按钮
    _btnLoadData = [[UIBarButtonItem alloc] initWithTitle:@"更新数据" style:UIBarButtonItemStylePlain target:self action:@selector(updateData:)];
    
    self.navigationItem.rightBarButtonItem = _btnLoadData;
    
    //创建数据
    _arrayData = [[NSMutableArray alloc] init];
    [self updateData:_btnLoadData];
}

//更新数据
-(void)updateData:(UIBarButtonItem*) btn{
    static int i = 0;
    for (int j=0; j<10; j++,i++) {
        NSString* str = [NSString stringWithFormat:@"cell = %d", i+1];
        [_arrayData addObject:str];
    }
    [_tableView reloadData];
}

-(NSInteger) numberOfSectionsInTableView:(UITableView *)tableView{
    return 1;
}

- (NSInteger) tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return _arrayData.count;
}

//创建cell
- (UITableViewCell*) tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    NSString* ID = @"cell";
    UITableViewCell* cell = [_tableView dequeueReusableCellWithIdentifier:ID];
    if(cell == nil){
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:ID];
    }
    
    cell.textLabel.text = [_arrayData objectAtIndex:indexPath.row];
    cell.detailTextLabel.text = @"副标题";
    
    return cell;
}

//设置cell高度
-(CGFloat) tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    return 60;
}


@end
