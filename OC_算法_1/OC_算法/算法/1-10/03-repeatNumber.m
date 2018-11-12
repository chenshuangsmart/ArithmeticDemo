//
//  03-repeatNumber.m
//  OC_算法
//
//  Created by cs on 2018/9/17.
//  Copyright © 2018年 cs. All rights reserved.
//

#import "03-repeatNumber.h"

/**
 3.数组中重复的数字
 
 题目描述:在一个长度为 n 的数组里的所有数字都在 0 到 n-1 的范围内。数组中某些数字是重复的，但不知道有几个数字是重复的，也不知道每个数字重复几次。请找出数组中任意一个重复的数字。
 Input:
 {2, 3, 1, 0, 2, 5}
 
 Output:
 2
 
 解题思路:
 要求复杂度为 O(N) + O(1)，也就是时间复杂度 O(N)，空间复杂度 O(1)。因此不能使用排序的方法，也不能使用额外的标记数组。牛客网讨论区这一题的首票答案使用 nums[i] + length 来将元素标记，这么做会有加法溢出问题。
 
 这种数组元素在 [0, n-1] 范围内的问题，可以将值为 i 的元素调整到第 i 个位置上。
 
 以 (2, 3, 1, 0, 2, 5) 为例：
 
 position-0 : (2,3,1,0,2,5) // 2 <-> 1
 (1,3,2,0,2,5) // 1 <-> 3
 (3,1,2,0,2,5) // 3 <-> 0
 (0,1,2,3,2,5) // already in position
 position-1 : (0,1,2,3,2,5) // already in position
 position-2 : (0,1,2,3,2,5) // already in position
 position-3 : (0,1,2,3,2,5) // already in position
 position-4 : (0,1,2,3,2,5) // nums[i] == nums[nums[i]], exit
 遍历到位置 4 时，该位置上的数为 2，但是第 2 个位置上已经有一个 2 的值了，因此可以知道 2 重复。
 
 */

@implementation _3_repeatNumber

+ (NSArray *)duplicate:(NSArray *)nums {
    if (nums == nil || nums.count == 0) {
        return nil;
    }
    
    NSMutableArray *numbers = [NSMutableArray arrayWithArray:nums];
    NSMutableArray *temp = [NSMutableArray array];
    
    for (int i = 0; i < numbers.count; i++) {
        while ([numbers[i] intValue] != i) {
            int number = [numbers[i] intValue];
            // 检查 number 与第 number 位置上的值是否相等,如果相等,说明该 number 重复了,否则索引 i 和 number 两者的值
            if (number == [numbers[number] intValue]) {
                [temp addObject:numbers[i]];
                return temp.copy;
            }
            [self cs_swap:numbers i:i j:number];
        }
    }
    
    return nil;
}

// 交换数组中i 和 j 位置上的数字
+ (void)cs_swap:(NSMutableArray *)numbers i:(int)i j:(int)j {
    if (i >= numbers.count || j >= numbers.count) {
        return;
    }
    NSNumber *number = numbers[i];
    numbers[i] = numbers[j];
    numbers[j] = number;
}

@end
