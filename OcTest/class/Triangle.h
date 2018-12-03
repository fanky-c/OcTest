//
//  Triangle.h
//  OcTest
//
//  Created by 赵超 on 2018/11/20.
//  Copyright © 2018 赵超. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Triangle : NSObject
{
    int width;
    int height;
}

-(void) setWidth:(int)width;

-(void) setHeight:(int)height;

-(double) area;

+(id) creatReact;

@end

NS_ASSUME_NONNULL_END
