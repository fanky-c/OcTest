//
//  ViewController.m
//  对对碰
//
//  Created by 赵超 on 2019/3/2.
//  Copyright © 2019 赵超. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    [self startGame];
}

//创建游戏界面
-(void) startGame{
    
    //生成随机的18对图像
    NSMutableArray* arr = [[NSMutableArray alloc] init];
    for(int i= 0; i < 18; i++){
        int random = arc4random() % 7;
        NSString* strImage = [NSString stringWithFormat:@"icons%d.png", random];
        [arr addObject:strImage];
        [arr addObject:strImage];
    }
   
    //创建按钮
    for (int i = 0; i < 6;  i++) {
        for (int j = 0; j < 6; j++) {
            UIButton* btn = [UIButton buttonWithType:UIButtonTypeCustom];
            
            //创建动画
            btn.frame = CGRectMake(self.view.frame.size.width/2 - 25, self.view.frame.size.height/2 -25, 50, 50);
            [UIView beginAnimations:@"FlipAni" context:nil];
            [UIView setAnimationDuration:3];
            btn.frame = CGRectMake(10+50*j, 40+50*i, 50, 50);
            btn.autoresizingMask = UIViewAutoresizingFlexibleLeftMargin | UIViewAutoresizingFlexibleRightMargin | UIViewAutoresizingFlexibleWidth| UIViewAutoresizingFlexibleHeight;
            [UIView commitAnimations];
            
            //创建随机数
            int indexRandom = arc4random() % arr.count;
            NSString* strImage = [arr objectAtIndex:indexRandom];
            [arr removeObjectAtIndex:indexRandom];
            UIImage* image = [UIImage imageNamed:strImage];
            [btn setImage:image forState:UIControlStateNormal];
            [btn addTarget:self action:@selector(pressBtn:) forControlEvents:UIControlEventTouchUpInside];
            [self.view addSubview:btn];
            //self.view.autoresizesSubviews = YES;
            
            //添加标识
            btn.tag = indexRandom;
        }
    }
}


//点击图标
-(void)pressBtn:(UIButton*) btn{
    static UIButton* btnFirst = nil;
    
    //源按钮图标
    if(btnFirst == nil){
        btnFirst = btn;
        btnFirst.enabled = NO;
    }else{
        //2个按钮图像相同
        if(btnFirst.currentImage == btn.currentImage){
            btnFirst.hidden = YES;
            btn.hidden = YES;
            btnFirst = nil;
        }
        //2个按钮图像不相同
        else{
            btnFirst.enabled = YES;
            btnFirst = nil;
        }
    }
}


@end
