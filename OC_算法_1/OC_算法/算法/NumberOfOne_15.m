//
//  NumberOfOne_15.m
//  OC_算法
//
//  Created by cs on 2018/10/24.
//  Copyright © 2018 cs. All rights reserved.
//

#import "NumberOfOne_15.h"

/**
 题目描述:二进制中 1 的个数
 解题思路:n&(n-1) 该位运算去除 n 的位级表示中最低的那一位。
 时间复杂度：O(M)，其中 M 表示 1 的个数。
 */
@implementation NumberOfOne_15

/** 输入一个整数，输出该数二进制表示中 1 的个数。*/
+ (int)numberOfOne:(int)number {
    int cnt = 0;
    while (number != 0) {
        cnt++;
        number &= (number - 1);
    }
    return cnt;
}

@end
