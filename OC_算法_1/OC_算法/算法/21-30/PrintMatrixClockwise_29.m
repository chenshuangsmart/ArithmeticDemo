//
//  PrintMatrixClockwise_29.m
//  OC_算法
//
//  Created by cs on 2018/11/7.
//  Copyright © 2018 cs. All rights reserved.
//

#import "PrintMatrixClockwise_29.h"

@implementation PrintMatrixClockwise_29

/**
 顺时针打印矩阵
 
 @param matrix 二维数组
 */
+ (NSArray *)printMatrix:(NSArray *)matrix {
    // 先构造一个二维数组
    NSMutableArray *digitSum = [NSMutableArray array];
    for (int i = 0; i < 4; i++) {
        NSMutableArray *firstArrM = [NSMutableArray array];
        for (int j = 0; j < 4; j++) {
            [firstArrM addObject:matrix[i * 4 + j]];
        }
        [digitSum addObject:firstArrM];
    }
    
    // 初始化变量
    int r1 = 0, r2 = (int)(digitSum.count) - 1; // 行数
    NSArray *numbers = digitSum[0];
    int c1 = 0, c2 = (int)(numbers.count) - 1;  // 列数
 
    NSMutableArray *result = [NSMutableArray array];
    // 开始循环遍历
    while (r1 <= r2 && c1 <= c2) {
        for (int i = c1; i <= c2; i++) {    // 从左到右
            [result addObject:digitSum[r1][i]];
        }
        for (int i = r1 + 1 ; i <= r2; i++) {   // 从上到下
            [result addObject:digitSum[i][c2]];
        }
        if (r1 != r2) {
            for (int i = c2 - 1; i >= c1; i--) {    // 从右到左
                [result addObject:digitSum[r2][i]];
            }
        }
        if (c1 != c2) {
            for (int i = r2 - 1; i > r1; i--) { // 从下到上
                [result addObject:digitSum[i][c1]];
            }
        }
        
        r1++;
        r2--;
        c1++;
        c2--;
    }
    
    return result.copy;
}

@end
