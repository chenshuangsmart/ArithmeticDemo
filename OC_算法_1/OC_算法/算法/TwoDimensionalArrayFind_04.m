//
//  TwoDimensionalArrayFind_04.m
//  OC_算法
//
//  Created by cs on 2018/9/19.
//  Copyright © 2018年 cs. All rights reserved.
//

#import "TwoDimensionalArrayFind_04.h"

/**
 4. 二维数组中的查找
 
 题目描述:在一个二维数组中，每一行都按照从左到右递增的顺序排序，每一列都按照从上到下递增的顺序排序。请完成一个函数，输入这样的一个二维数组和一个整数，判断数组中是否含有该整数。
 
 解题思路:从右上角开始查找。矩阵中的一个数，它左边的数都比它小，下边的数都比它大。因此，从右上角开始查找，就可以根据 target 和当前元素的大小关系来缩小查找区间。
 
 复杂度：O(M + N) + O(1)
 例如
 Consider the following matrix:
 [
 [1,   4,  7, 11, 15],
 [2,   5,  8, 12, 19],
 [3,   6,  9, 16, 22],
 [10, 13, 14, 17, 24],
 [18, 21, 23, 26, 30]
 ]
 
 Given target = 5, return true.
 Given target = 20, return false.
 
 */

@implementation TwoDimensionalArrayFind_04

// 初始化一个二维数组
+ (bool)findNumber:(int)number numbers:(NSArray *)numbers {
    if (numbers == nil) {
        NSArray *number1 = @[@1,@4,@7,@11,@15];
        NSArray *number2 = @[@2,@5,@8,@12,@19];
        NSArray *number3 = @[@3,@6,@9,@16,@22];
        NSArray *number4 = @[@10,@13,@14,@17,@24];
        NSArray *number5 = @[@18,@21,@23,@26,@30];
        numbers = @[number1,number2,number3,number4,number5];
    }
    return [self find:number matrix:numbers];
}

// 在二维数组 matrix 中查找目标数 target
+ (bool)find:(int)target matrix:(NSArray *)matrix {
    if (matrix == nil || matrix.count == 0) {
        return false;
    }
    NSUInteger rows = matrix.count;    // 行数
    NSArray *colArray = matrix[0];
    NSUInteger cols = colArray.count;  // 列数
    int r = 0;  // 第 r 行
    int c = (int)cols - 1; // 第 c 列 从右上角开始
    
    while (r <= rows - 1 && c >= 0) {
        if (target == [matrix vFI:r j:c]) {
            NSLog(@"target = %d, isFind row = %d, col = %d",target,r,c);
            return true;
        } else if (target > [matrix vFI:r j:c]) {
            r++; // 行数+1
        } else {
            c--;    // 列数减1
        }
    }
    return false;
}


@end
