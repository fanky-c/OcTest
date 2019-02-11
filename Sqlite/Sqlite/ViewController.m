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
        [self insertData];
        //NSLog(@"插入数据");
        
    }else if (btn.tag == 102)
    {
        [self deleteData];
        //NSLog(@"删除数据");
        
    }else if (btn.tag == 103)
    {
        [self selectData];
        //NSLog(@"查找显示");
        
    }
}

- (void) createDB{
    //获取数据库的创建路径
    //NSHomeDirectory(): 获取手机app沙盒路径
    NSString* strPath = [NSHomeDirectory() stringByAppendingString:@"/Documents/db01.db"];
    
    //创建并打开数据库
    //如果没有就创建数据库
    //如果路径下有数据库，就加载数据库到内存
    _mDB = [FMDatabase databaseWithPath:strPath];
    
    //判断数据库是否创建成功
    if(_mDB != nil){
        NSLog(@"数据库创建成功！");
    }
    
    //打开数据库
    BOOL isOpen = [_mDB open];
    if(isOpen){
        NSLog(@"打开数据库");
    }
    
    //创建表
    NSString* strCreateTable = @"create table if not exists stu(id integer primary key, age interger, name varchar(20));";
    if([_mDB executeUpdate:strCreateTable]){
        NSLog(@"stu table is created!");
    }
    
}

- (void) closeDB{
    //关闭数据库
    BOOL isClose = [_mDB close];
    if(isClose){
        NSLog(@"关闭数据库");
    }
}

- (void) createSqlite{
    [self createDB];
    [self closeDB];
}

- (void) insertData{
    [self createDB];
    if([_mDB open]){
        NSString* strInsert = @"insert into stu values(2, 29, 'hack');";
         if([_mDB executeUpdate:strInsert]){
             NSLog(@"添加成功");
         }
    }
    [self closeDB];
}

- (void) selectData{
    [self createDB];
    if([_mDB open]){
        NSString* strQuery = @"select * from stu";
        FMResultSet* results = [_mDB executeQuery:strQuery];
        while ([results next]) {
            NSInteger strID = [results intForColumn:@"id"];
            NSString* strName = [results stringForColumn:@"name"];
            NSInteger strAge = [results intForColumn:@"age"];
            
            NSLog(@"id = %ld , name = %@, age = %ld" , strID, strName, strAge);
        }
    }
    [self closeDB];
}


- (void) deleteData{
    [self createDB];
    if([_mDB open]){
        NSString* strDelete = @"delete from stu where id = 1;";
        if([_mDB executeUpdate:strDelete]){
            NSLog(@"删除成功！");
        }
    }
    [self closeDB];
}


@end
