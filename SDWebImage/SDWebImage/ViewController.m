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
#import "BookModel.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    //创建tableview数据视图
    _tableView = [[UITableView alloc] initWithFrame:self.view.bounds style:UITableViewStyleGrouped];
    _tableView.autoresizingMask = UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleHeight;
    [self.view addSubview:_tableView];
    
    //数据视图代理
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
//    static int i = 0;
//    for (int j=0; j<10; j++,i++) {
//        NSString* str = [NSString stringWithFormat:@"cell = %d", i+1];
//        [_arrayData addObject:str];
//    }
    [self loadDataFromNet];
}


//加载数据
- (void) loadDataFromNet{
    AFHTTPSessionManager* session = [AFHTTPSessionManager manager];
    NSArray* array = @[@"IOS",@"Java",@"web前端"];
    static int counter = 0;
    
    NSString* path = [NSString stringWithFormat:@"http://api.douban.com/book/subjects?q=%@&alt=json&apikey=01987f93c544bbfb04c97ebb4fce33f1", array[counter]];
    
    counter++;
    
    if(counter >= 2){
        counter = 0;
    }
    
    //下载
    [session GET:path parameters:nil progress:^(NSProgress * _Nonnull downloadProgress) {
        NSLog(@"%@" , downloadProgress);
    } success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
        NSLog(@"下载成功");
        if([responseObject isKindOfClass:[NSDictionary class]]){
            NSLog(@"%@", responseObject);
            [self parseData:responseObject];
        }
    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
        NSLog(@"%@" , error);
    }];
}

//解析数据
- (void) parseData:(NSDictionary*) dicData{
    NSArray* arrEntry = [dicData objectForKey:@"entry"];
    for (NSDictionary* dictBook in arrEntry) {
        NSDictionary* dicTitle = [dictBook objectForKey:@"title"];
        NSString* strTitle = [dicTitle objectForKey:@"$t"];
        BookModel* book = [[BookModel alloc] init];
        book.mBookName = strTitle;
        
        NSArray* arrLink = [dictBook objectForKey:@"link"];
        
        for (NSDictionary* dicLink in arrLink) {
            NSString* rel = [dicLink objectForKey:@"@rel"];
            if([rel isEqualToString:@"image"]){
                book.mImageURL = [dicLink objectForKey:@"@href"];
            }
        }
        
        [_arrayData addObject:book];
        [_tableView reloadData];
    }
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
    
    BookModel* bookModel = _arrayData[indexPath.row];
    
    cell.textLabel.text = bookModel.mBookName;
    cell.detailTextLabel.text = @"副标题";
    
    [cell.imageView sd_setImageWithURL: [NSURL URLWithString:bookModel.mImageURL] placeholderImage:[UIImage imageNamed:@"loading.gif"]];
    
    return cell;
}

//设置cell高度
-(CGFloat) tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    return 60;
}


@end
