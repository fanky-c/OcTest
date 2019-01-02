//
//  VCMain.h
//  Xib
//
//  Created by 赵超 on 2019/1/2.
//  Copyright © 2019 赵超. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface VCMain : UIViewController
@property (weak, nonatomic) IBOutlet UILabel *mUsername;
@property (weak, nonatomic) IBOutlet UILabel *mPassword;
@property (weak, nonatomic) IBOutlet UITextField *mTfUsername;
@property (weak, nonatomic) IBOutlet UITextField *mTfPassword;
@property (weak, nonatomic) IBOutlet UIButton *bLogin;
@property (weak, nonatomic) IBOutlet UIButton *bReg;
- (IBAction)login:(UIButton *)sender;
- (IBAction)reg:(UIButton *)sender;

@end

NS_ASSUME_NONNULL_END
