//
//  VCFirst.m
//  多页面传值
//
//  Created by 赵超 on 2019/2/8.
//  Copyright © 2019 赵超. All rights reserved.
//

#import "VCFirst.h"
#import "VCSecond.h"

@interface VCFirst ()

@end

@implementation VCFirst

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    UIBarButtonItem* rightBtn = [[UIBarButtonItem alloc] initWithTitle:@"视图二" style:UIBarButtonItemStylePlain target:self action:@selector(pressNext)];
    
    self.navigationItem.rightBarButtonItem = rightBtn;
}


- (void) pressNext{
    VCSecond* vcSecond = [[VCSecond alloc] init];
    
    //将当前的控制器作为代理对象
    vcSecond.delegate = self;
    
    [self.navigationController pushViewController:vcSecond animated:YES];
}

- (void) changeColor:(UIColor *)color{
    self.view.backgroundColor = color;
}

//点击空白区域
//- (void) touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
//    VCSecond* vcSecond = [[VCSecond alloc] init];
//
//    [self.navigationController pushViewController:vcSecond animated:YES];
//}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
