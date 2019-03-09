//
//  IsPopOrder_31.h
//  OC_算法
//
//  Created by cs on 2018/11/12.
//  Copyright © 2018 cs. All rights reserved.
//

#import <Foundation/Foundation.h>

/**
 31.栈的压入、弹出序列
 题目描述: 输入两个整数序列，第一个序列表示栈的压入顺序，请判断第二个序列是否为该栈的弹出顺序。假设压入栈的所有数字均不相等。
 例如序列 1,2,3,4,5 是某栈的压入顺序，序列 4,5,3,2,1 是该压栈序列对应的一个弹出序列，但 4,3,5,1,2 就不可能是该压栈序列的弹出序列。

 */
@interface IsPopOrder_31 : NSObject

// pushSequence-压入顺序 popSequence-弹出序列
+ (bool)isPopOrder:(NSArray *)pushSequence popSequence:(NSArray *)popSequence;

@end
