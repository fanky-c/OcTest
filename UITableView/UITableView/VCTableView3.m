//
//  VCTableView3.m
//  UITableView
//
//  Created by 赵超 on 2019/2/10.
//  Copyright © 2019 赵超. All rights reserved.
//

#import "VCTableView3.h"

@interface VCTableView3 ()

@end

@implementation VCTableView3

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    _tableView = [[UITableView alloc] initWithFrame:self.view.bounds style:UITableViewStyleGrouped];
    
    //自动调整视图大小 是UIView提供
    _tableView.autoresizingMask = UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleHeight;
    
    [self.view addSubview:_tableView];
    
    _arrayData = [[NSMutableArray alloc] init];
    
    for (int i = 0; i < 20; i++) {
        NSString* str = [NSString stringWithFormat:@"A %d" , i];
        [_arrayData addObject:str];
    }
    
    //当数据源发生变化，重新加载数据
    [_tableView reloadData];
    
    //协议代理 self = VCTableView3
    _tableView.delegate = self;
    _tableView.dataSource = self;
    
    //数据视图头部视图和尾部视图
    _tableView.tableHeaderView = nil;
    _tableView.tableFooterView = nil;
    
    [self createBtn];
}


- (void) createBtn{
    _isEdit = NO;
    
    _btnEdit = [[UIBarButtonItem alloc] initWithTitle:@"编辑" style:UIBarButtonItemStylePlain target:self action:@selector(edit)];
    _btnFinish = [[UIBarButtonItem alloc] initWithTitle:@"完成" style:UIBarButtonItemStylePlain target:self action:@selector(finish)];
    _btnDelete = [[UIBarButtonItem alloc] initWithTitle:@"删除" style:UIBarButtonItemStylePlain target:self action:@selector(delete)];
    
    self.navigationItem.rightBarButtonItem = _btnEdit;
}

- (void) edit{
    _isEdit = YES;
    [_tableView setEditing:_isEdit];
    self.navigationItem.leftBarButtonItem = nil;
    self.navigationItem.rightBarButtonItem = _btnFinish;
}

- (void) finish{
    _isEdit = NO;
    [_tableView setEditing:_isEdit];
    self.navigationItem.leftBarButtonItem = nil;
    self.navigationItem.rightBarButtonItem = _btnEdit;
}

- (void) delete{
    
}

//设置单元格样式
//- (UITableViewCellEditingStyle) tableView:(UITableView *)tableView editingStyleForRowAtIndexPath:(NSIndexPath *)indexPath{
//    return UITableViewCellEditingStyleInsert;
//}

//删除单元格协议
- (void) tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath{
    [_arrayData removeObjectAtIndex:indexPath.row];
    [_tableView reloadData];
    NSLog(@"删除！");
}

//选中单元格协议
- (void) tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    NSLog(@"当前选中的单元格%ld,%ld",indexPath.section, indexPath.row);
}

//取消选中的单元格协议
- (void) tableView:(UITableView *)tableView didDeselectRowAtIndexPath:(NSIndexPath *)indexPath{
    NSLog(@"取消的单元格%ld,%ld",indexPath.section, indexPath.row);
}


- (NSInteger) numberOfSectionsInTableView:(UITableView *)tableView{
    return 1;
}

- (NSInteger) tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return [_arrayData count];
}

- (UITableViewCell*) tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    NSString* ID = @"cell";
    
    //尝试复用单元格
    UITableViewCell* cell = [_tableView dequeueReusableCellWithIdentifier:ID];
   
    if(cell == nil){
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:ID];
    }
    
    cell.textLabel.text = [_arrayData objectAtIndex:indexPath.row];
    cell.detailTextLabel.text = [NSString stringWithFormat:@"子标题%ld" , indexPath.row];
    UIImage* image = [UIImage imageNamed:@"image1.jpg"];
    //UIImageView* iView = [[UIImageView alloc] initWithImage:image];
    cell.imageView.image = image;
    return cell;
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
