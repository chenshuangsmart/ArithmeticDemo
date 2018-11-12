//
//  power_16.m
//  OC_算法
//
//  Created by cs on 2018/10/24.
//  Copyright © 2018 cs. All rights reserved.
//

#import "power_16.h"

/**
 题目描述:给定一个 double 类型的浮点数 base 和 int 类型的整数 exponent，求 base 的 exponent 次方。
 解题思路:下面的讨论中 x 代表 base，n 代表 exponent。
        因为 (x*x)n/2 可以通过递归求解，并且每次递归 n 都减小一半，因此整个算法的时间复杂度为 O(logN)。
 */
@implementation power_16

/** 数值的整数次方 */
+ (double)power:(double)base exponent:(int)exponent {
    if (exponent == 0) {
        return 1;
    }
    if (exponent == 1) {
        return base;
    }
    bool isNegative = NO;
    if (exponent < 0) {
        exponent -= exponent;
        isNegative = YES;
    }
    double pow = [self power:base * base exponent:exponent / 2];
    if (exponent % 2 != 0) {
        pow = pow * base;
    }
    return isNegative ? 1 / pow : pow;
}

@end
