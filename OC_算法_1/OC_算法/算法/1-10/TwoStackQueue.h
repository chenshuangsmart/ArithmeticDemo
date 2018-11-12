//
//  TwoStackQueue.h
//  OC_算法
//
//  Created by cs on 2018/10/9.
//  Copyright © 2018 cs. All rights reserved.
//

#import <Foundation/Foundation.h>

/**
 用两个栈实现队列
 */
@interface TwoStackQueue : NSObject

/**
 用两个栈来实现一个队列，完成队列的 Push 和 Pop 操作。

 @param numbers 需要入栈的数据
 @return 出栈
 */
+ (NSNumber *)twoStackToQueue:(NSArray *)numbers;

@end
