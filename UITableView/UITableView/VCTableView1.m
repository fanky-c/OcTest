//
//  VCTableView1.m
//  UITableView
//
//  Created by 赵超 on 2019/2/9.
//  Copyright © 2019 赵超. All rights reserved.
//

#import "VCTableView1.h"

@interface VCTableView1 ()

@end

@implementation VCTableView1

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    _tableView = [[UITableView alloc] initWithFrame:self.view.bounds style:UITableViewStyleGrouped];
    
    //_tableView.backgroundColor = [UIColor redColor];
    
    _tableView.delegate = self;
    _tableView.dataSource = self;
    
    [self.view addSubview:_tableView];
}

//具体多少个区域，也就是多少组
-(NSInteger) numberOfSectionsInTableView:(UITableView *)tableView{
    return 3;
}

//每一个区域（组）有多少行
- (NSInteger) tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return 5;
}

//每一个单元格元素
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    NSString* cellStr = @"cell";
    UITableViewCell* cell = [_tableView dequeueReusableCellWithIdentifier:cellStr];
    
    if(cell == nil){
        //创建单元格
        //p1：单元格样式
        //p2:单元格复用标识
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellStr];
    }
    NSString* str = [NSString stringWithFormat:@"第%ld组,第%ld行",indexPath.section,indexPath.row];
    
    cell.textLabel.text = str;
    
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
