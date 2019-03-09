//
//  IsPopOrder_31.m
//  OC_算法
//
//  Created by cs on 2018/11/12.
//  Copyright © 2018 cs. All rights reserved.
//

#import "IsPopOrder_31.h"

@implementation IsPopOrder_31

// pushSequence-压入顺序 popSequence-弹出序列
+ (bool)isPopOrder:(NSArray *)pushSequence popSequence:(NSArray *)popSequence {
    Stack *pushStack = [[Stack alloc] initWithNumbers:pushSequence];
    int n = (int)pushStack.stackLength;
    
    Stack *popStack = [[Stack alloc] initWithNumbers:popSequence];
    Stack *stack = [[Stack alloc] init];
    
//    for (int pushIndex = 0, popIndex = 0; pushIndex < n; pushIndex++) {
//        stack push:pushStack
//        while (<#condition#>) {
//            <#statements#>
//        }
//    }
    
    return YES;
}

@end
