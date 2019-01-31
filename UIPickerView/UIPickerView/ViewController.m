//
//  ViewController.m
//  UIPickerView
//
//  Created by 赵超 on 2019/1/31.
//  Copyright © 2019 赵超. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    
    UIPickerView* pickerView = [[UIPickerView alloc] init];
    
    pickerView.frame = CGRectMake(80, 100, 300, 200);
    
    [self.view addSubview:pickerView];
    
    pickerView.delegate = self;
    pickerView.dataSource = self;
    
}

//实现有多少列
- (NSInteger) numberOfComponentsInPickerView:(UIPickerView *)pickerView{
    return 3;
}

//实现每列有多少行
- (NSInteger) pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component{
    if(component == 0){
        return 10;
    }else if(component == 1){
        return 15;
    }else{
        return 20;
    }
}

//实现每行具体数据
//- (NSString*) pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component{
//    NSString* str = [NSString stringWithFormat:@"%ld列%ld行",component+1,row+1];
//    return str;
//
//}

//用图标
- (UIView*) pickerView:(UIPickerView *)pickerView viewForRow:(NSInteger)row forComponent:(NSInteger)component reusingView:(UIView *)view{
    UIImage* image = [UIImage imageNamed:[NSString stringWithFormat:@"image%ld.jpg", row+1]];
    UIImageView* iview = [[UIImageView alloc] initWithImage:image];
    iview.frame = CGRectMake(0, 0, 40, 40);
    return iview;
}

//定义每一行的高度
-(CGFloat)pickerView:(UIPickerView *)pickerView rowHeightForComponent:(NSInteger)component{
    return 80;
}




@end
