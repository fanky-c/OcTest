//
//  VCTableView2.m
//  UITableView
//
//  Created by 赵超 on 2019/2/9.
//  Copyright © 2019 赵超. All rights reserved.
//

#import "VCTableView2.h"

@interface VCTableView2 ()

@end

@implementation VCTableView2

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    _tableview = [[UITableView alloc] initWithFrame:self.view.bounds style:UITableViewStyleGrouped];
    
    _arrayData = [[NSMutableArray alloc] init];
    
    for (int i = 'A'; i <= 'Z'; i++) {
        NSMutableArray* _arraySmall = [[NSMutableArray alloc] init];
        for (int j = 0; j <= 5; j++) {
            NSString* str = [NSString stringWithFormat:@"%c%d",i,j];
            [_arraySmall addObject:str];
        }
        [_arrayData addObject:_arraySmall];
    }
    
    _tableview.delegate = self;
    _tableview.dataSource = self;
    
    [self.view addSubview:_tableview];
    
}

- (NSInteger) numberOfSectionsInTableView:(UITableView *)tableView{
    return _arrayData.count;
}

- (NSInteger) tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    
    return  [_arrayData[section] count];
}

- (UITableViewCell*) tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    NSString* cellStr = @"cell";
    UITableViewCell* cell = [_tableview dequeueReusableCellWithIdentifier:cellStr];
    if(cell == nil){
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellStr];
    }
    
    cell.textLabel.text = _arrayData[indexPath.section][indexPath.row];
    
    return cell;
}

-(NSString*) tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section{
    if(section == 0){
        return @"头部标题一";
    }
    return @"头部标题二";
}

-(CGFloat) tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    return 60;
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
