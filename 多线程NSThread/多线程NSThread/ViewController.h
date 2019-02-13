//
//  ViewController.h
//  多线程NSThread
//
//  Created by 赵超 on 2019/2/13.
//  Copyright © 2019 赵超. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
{
    NSThread* _thread1;
    NSThread* _thread2;
    NSLock* _lock;
    NSInteger _count;
}

@end

