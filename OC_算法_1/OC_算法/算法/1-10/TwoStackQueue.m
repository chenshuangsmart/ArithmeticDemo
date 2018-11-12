//
//  TwoStackQueue.m
//  OC_算法
//
//  Created by cs on 2018/10/9.
//  Copyright © 2018 cs. All rights reserved.
//

#import "TwoStackQueue.h"
#import "Stack.h"

/**
 题目描述:用两个栈来实现一个队列，完成队列的 Push 和 Pop 操作。
 解题思路:in 栈用来处理入栈（push）操作，out 栈用来处理出栈（pop）操作。一个元素进入 in 栈之后，出栈的顺序被反转。当元素要出栈时，需要先进入 out 栈，此时元素出栈顺序再一次被反转，因此出栈顺序就和最开始入栈顺序是相同的，先进入的元素先退出，这就是队列的顺序。
 */

@implementation TwoStackQueue

+ (NSNumber *)twoStackToQueue:(NSArray *)numbers {
    Stack *inStack = [[Stack alloc] init];
    Stack *outStack = [[Stack alloc] init];
    
    // 先将所有元素入栈
    for (NSNumber *number in numbers) {
        [inStack push:number];
    }
    
    if (outStack.isEmpty) {
        while (!inStack.isEmpty) {
            [outStack push:inStack.popObj];
        }
    }
    
    if (outStack.isEmpty) {
        NSLog(@"queue is empty");
    }
    
    return outStack.popObj;
}

@end
