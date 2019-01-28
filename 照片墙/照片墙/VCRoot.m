//
//  VCRoot.m
//  照片墙
//
//  Created by 赵超 on 2019/1/28.
//  Copyright © 2019 赵超. All rights reserved.
//

#import "VCRoot.h"

@interface VCRoot ()

@end

@implementation VCRoot

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.title = @"照片墙";
    
    self.view.backgroundColor = [UIColor whiteColor];
    
    UIScrollView* sv = [[UIScrollView alloc] init];
    
    //设置位置
    sv.frame = CGRectMake(10, 45, self.view.frame.size.width - 20, self.view.frame.size.height - 65);
    
    //设置画布大小
    sv.contentSize = CGSizeMake(self.view.frame.size.width - 20, self.view.frame.size.height * 1.5);
    
    sv.showsVerticalScrollIndicator = NO;
    
    //打开交互模式
    sv.userInteractionEnabled = YES;
    
    for(int i=0; i<30; i++){
        NSString* imageName = [NSString stringWithFormat:@"image%d.jpg", i+1];
        UIImage* image = [UIImage imageNamed:imageName];
        UIImageView* view = [[UIImageView alloc] initWithImage:image];
        view.frame = CGRectMake(5+(i%4)*100, 10+(i/4)*150, 90, 130);
        
        //打开交互模式
        view.userInteractionEnabled = YES;
        
        //创建点击手势
        UITapGestureRecognizer* tap = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(pressTap:)];
        //单次点击
        tap.numberOfTapsRequired = 1;
        //单个手指
        tap.numberOfTouchesRequired = 1;
        
        [view addGestureRecognizer:tap];
        
        [sv addSubview:view];
    }
    
    //sv.backgroundColor = [UIColor redColor];
    
    [self.view addSubview:sv];
    
}

- (void) pressTap:(UITapGestureRecognizer*) tap{
    NSLog(@"点击！！！");
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
