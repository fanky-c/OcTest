//
//  ViewController.m
//  Sqlite
//
//  Created by 赵超 on 2019/2/11.
//  Copyright © 2019 赵超. All rights reserved.
//

#import "ViewController.h"
#import "FMDatabase.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    NSArray* arrayBtn = [NSArray arrayWithObjects:@"创建数据库",@"插入数据",@"删除数据",@"查找显示", nil];
    for (int i = 0; i < arrayBtn.count; i++) {
        UIButton* btn = [UIButton buttonWithType:UIButtonTypeRoundedRect];
        btn.frame = CGRectMake(100, 100+100*i, 100, 40);
        [btn setTitle:[arrayBtn objectAtIndex:i] forState:UIControlStateNormal];
        [btn addTarget:self action:@selector(pressBtn:) forControlEvents:UIControlEventTouchUpInside];
        [self.view addSubview:btn];
        btn.tag = 100 + i;
    }
}

- (void) pressBtn:(UIButton*) btn{
    if(btn.tag == 100)
    {
        [self createSqlite];
        //NSLog(@"创建数据库");
        
    }else if (btn.tag == 101)
    {
         NSLog(@"插入数据");
        
    }else if (btn.tag == 102)
    {
         NSLog(@"删除数据");
        
    }else if (btn.tag == 103)
    {
         NSLog(@"查找显示");
        
    }
}

- (void) createSqlite{
    //获取数据库的创建路径
    //NSHomeDirectory(): 获取手机app沙盒路径
    NSString* strPath = [NSHomeDirectory() stringByAppendingString:@"/Documents/db01.db"];
    
    //创建并打开数据库
    //如果没有就创建数据库
    //如果路径下有数据库，就加载数据库到内存
    FMDatabase* db = [FMDatabase databaseWithPath:strPath];
    
    if(db != nil){
        NSLog(@"数据库创建成功！");
    }
    
    //打开数据库
    BOOL isOpen = [db open];
    if(isOpen){
        NSLog(@"打开数据库");
    }
    
    //关闭数据库
    BOOL isClose = [db close];
    if(isClose){
        NSLog(@"关闭数据库");
    }
    
}

@end
