//
//  Fibonacci.m
//  OC_算法
//
//  Created by cs on 2018/10/9.
//  Copyright © 2018 cs. All rights reserved.
//

#import "Fibonacci.h"

/**
 10.1 斐波那契数列
 题目描述:求斐波那契数列的第 n 项，n <= 39。
        0 (n = 0)
 f(n) = 1 (n = 1)
        f(n - 1) + f(n - 2) (n > 1)
 
 */

@implementation Fibonacci

// 1.递归是将一个问题划分成多个子问题求解，动态规划也是如此，但是动态规划会把子问题的解缓存起来，从而避免重复求解子问题。
// 求斐波那契数列
//+ (int)Fibonacci:(int)number {
//    if (number <= 1) {
//        return number;
//    }
//
//    // 构造一个数组
//    NSMutableArray *fib = [NSMutableArray array];
//    for (int i = 0; i < number + 1; i++) {
//        [fib addObject:[NSNumber numberWithInt:0]];
//    }
//
//    // 递归求解
//    fib[1] = [NSNumber numberWithInt:1];
//    for (int i = 2; i < number + 1; i++) {
//        fib[i] = [NSNumber numberWithInt:[fib[i - 1] intValue] + [fib[i - 2] intValue]];
//    }
//
//    return [fib[number] intValue];
//}

// 2.考虑到第 i 项只与第 i-1 和第 i-2 项有关，因此只需要存储前两项的值就能求解第 i 项，从而将空间复杂度由 O(N) 降低为 O(1)。
+ (int)Fibonacci:(int)number {
    if (number <= 1) {
        return number;
    }
    
    int pre2 = 0, pre1 = 1, fib = 0;
    
    for (int i = 2; i < number + 1; i++) {
        fib = pre1 + pre2;
        pre2 = pre1;
        pre1 = fib;
    }
    
    return fib;
}

/**
 10.2 跳台阶
 一只青蛙一次可以跳上 1 级台阶，也可以跳上 2 级。求该青蛙跳上一个 n 级的台阶总共有多少种跳法。
 */
+ (int)jumpFloor:(int)number {
    if (number <= 2) {
        return number;
    }
    
    int pre1 = 2, pre2 = 1;
    int result = 1;
    
    for (int i = 2; i < number; i++) {
        result = pre2 + pre1;
        pre2 = pre1;
        pre1 = result;
    }
    
    return result;
}

/**
 10.3 变态跳台阶
 一只青蛙一次可以跳上 1 级台阶，也可以跳上 2 级... 它也可以跳上 n 级。求该青蛙跳上一个 n 级的台阶总共有多少种跳法。
 */
+ (int)jumpFloor2:(int)number {
    if (number <= 0) {
        return 0;
    }
    // 1.构建数组
    NSMutableArray *arrM = [NSMutableArray array];
    for (int i = 0; i < number; i++) {
        [arrM addObject:[NSNumber numberWithInt:1]];
    }
    
    // 2.
    for (int i = 1; i < number; i++) {
        for (int j = 0; j < i; j++) {
            arrM[i] = [NSNumber numberWithInt:[arrM[i] intValue] + [arrM[j] intValue]];
        }
    }
    
    return [arrM[number - 1] intValue];
}

/**
 10.4 矩形覆盖
 我们可以用 2*1 的小矩形横着或者竖着去覆盖更大的矩形。请问用 n 个 2*1 的小矩形无重叠地覆盖一个 2*n 的大矩形，总共有多少种方法？
 */
+ (int)rectCover:(int)number {
    if (number <= 2) {
        return number;
    }
    
    int pre1 = 2, pre2 = 1;
    int result = 0;
    
    for (int i = 3; i < number + 1; i++) {
        result = pre2 + pre1;
        pre2 = pre1;
        pre1 = result;
    }
    
    return result;
}

@end
