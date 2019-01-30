//
//  VCImageShow.m
//  照片墙
//
//  Created by 赵超 on 2019/1/28.
//  Copyright © 2019 赵超. All rights reserved.
//

#import "VCImageShow.h"

@interface VCImageShow ()

@end

@implementation VCImageShow

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.title = @"照片墙";
    
    _imageView = [[UIImageView alloc] init];
    _imageView.frame = CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height);
    
    //通过tag
    //_imageView.image = [UIImage imageNamed:[NSString stringWithFormat:@"image%lu.jpg", _imageTag-100]];
    
    //通过image
    _imageView.image = _image;
    
    [self.view addSubview:self.imageView];
    
    
    NSLog(@"测试测试：%lu", self.imageTag);
    
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
