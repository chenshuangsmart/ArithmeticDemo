//
//  printOneToMaxOfNDigits_17.m
//  OC_算法
//
//  Created by cs on 2018/10/24.
//  Copyright © 2018 cs. All rights reserved.
//

#import "printOneToMaxOfNDigits_17.h"

/**
 题目描述:输入数字 n，按顺序打印出从 1 到最大的 n 位十进制数。比如输入 3，则打印出 1、2、3 一直到最大的 3 位数即 999。
 解题思路:1.由于 n 可能会非常大，因此不能直接用 int 表示数字，而是用 char 数组进行存储。
        2.使用回溯法得到所有的数。
 */
@implementation printOneToMaxOfNDigits_17

/** 打印从 1 到最大的 n 位数 */
- (void)printOneToMaxOfNDigits:(int)number {
    if (number <= 0) {
        return;
    }
    
}

- (void)printOneToMaxOfNDigits:(NSArray *)numbers digit:(int)digit {
    if (digit == numbers.count) {
        [self printNumber:numbers];
        return;
    }
    
}

- (void)printNumber:(NSArray *)numbers {
    for (NSString *str in numbers) {
        NSLog(@"str = %@",str);
    }
}

@end
