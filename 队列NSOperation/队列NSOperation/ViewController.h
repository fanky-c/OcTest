//
//  ViewController.h
//  多任务NSOperation
//
//  Created by 赵超 on 2019/2/14.
//  Copyright © 2019 赵超. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
{
    
    NSOperation* _opt;
    
    
    NSInteger _count;
    
    //锁
    NSLock* _lock;
    
    //定义一个任务队列对象
    NSOperationQueue* _queue;
}

@end

