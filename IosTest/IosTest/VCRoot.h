//
//  VCRoot.h
//  Xib
//
//  Created by 赵超 on 2019/1/2.
//  Copyright © 2019 赵超. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface VCRoot : UIViewController
@property (weak, nonatomic) IBOutlet UILabel *mUsername;
@property (weak, nonatomic) IBOutlet UILabel *mPassword;
@property (weak, nonatomic) IBOutlet UITextField *mTfUsername;
@property (weak, nonatomic) IBOutlet UITextField *mTfPassword;
@property (weak, nonatomic) IBOutlet UIButton *mLogin;
@property (weak, nonatomic) IBOutlet UIButton *mReg;
- (IBAction)login:(UIButton *)sender;
- (IBAction)Reg:(UIButton *)sender;
@end

NS_ASSUME_NONNULL_END
