//
//  TicketMangager.m
//  多线程NSThread
//
//  Created by 赵超 on 2019/3/31.
//  Copyright © 2019 赵超. All rights reserved.
//

#import "TicketMangager.h"
#define TOTALTICKETS 50;

@interface TicketMangager()

@property int currentTickets;    //当前剩余
@property int saleCount;    //已售票数

@property (nonatomic, strong) NSThread* NSThreadBJ;
@property (nonatomic, strong) NSThread* NSThreadSH;
@property (nonatomic, strong) NSCondition* ticketCondition;

@end

@implementation TicketMangager

-(instancetype)init{
    self = [super init];
    if(self){
        self.currentTickets = TOTALTICKETS;
        self.ticketCondition = [[NSCondition alloc] init];
        self.NSThreadBJ = [[NSThread alloc] initWithTarget:self selector:@selector(run) object:nil];
        [self.NSThreadBJ setName:@"NSThreadBJ"];
        [self.NSThreadBJ setThreadPriority:0.5];
        self.NSThreadSH = [[NSThread alloc] initWithTarget:self selector:@selector(run) object:nil];
        [self.NSThreadSH setName:@"NSThreadSH"];
        [self.NSThreadBJ setThreadPriority:0.5];
    }
    return self;
}


-(void)run{
    while (true) {
        //synchronized关键词线程锁
        //@synchronized (self) {
        [self.ticketCondition lock];
            if(self.currentTickets-- <= 0) return;
            [NSThread sleepForTimeInterval:0.5];
            //sleep(0.5);
            self.saleCount = 50 - self.currentTickets;
            NSLog(@"%@，当前剩余票数：%d， 已售票数：%d",[NSThread currentThread].name,self.currentTickets, self.saleCount);
         [self.ticketCondition unlock];
        //}
    }
}

-(void) startSaleTicket{
    [self.NSThreadSH start];
    [self.NSThreadBJ start];
}


@end
