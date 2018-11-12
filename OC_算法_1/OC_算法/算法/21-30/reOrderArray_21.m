//
//  reOrderArray_21.m
//  OC_算法
//
//  Created by cs on 2018/10/29.
//  Copyright © 2018 cs. All rights reserved.
//

#import "reOrderArray_21.h"

/**
 21.调整数组顺序使奇数位于偶数前面
 题目描述:需要保证奇数和奇数，偶数和偶数之间的相对位置不变，这和书本不太一样。
 */
@implementation reOrderArray_21

+ (NSArray *)reOrderArray:(NSArray *)numbers {
    if (numbers.count == 0) {
        return nil;
    }
    int oddCnt = 0; // 奇数个数
    for (int i = 0; i < numbers.count; i++) {
        if ([numbers vFI:i] % 2 == 1) {
            oddCnt++;
        }
    }
    NSMutableArray *numberM = [NSMutableArray arrayWithArray:numbers];
    int i = 0, j = oddCnt;
    for (int k = 0; k < numbers.count; k++) {
        NSNumber *number = [numbers objectAtIndex:k];
        if (number.intValue % 2 == 1) {
            numberM[i++] = number;  // 奇数从0开始排序
        } else {
            numberM[j++] = number;  // 偶数从 oddCnt 开始排序,因为奇数的个数为 oddCnt 个.
        }
    }
    
    return numberM.copy;
}
@end
