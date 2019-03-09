//
//  MoreThanHalfNumSolution_39.m
//  OC_算法
//
//  Created by cs on 2018/11/27.
//  Copyright © 2018 cs. All rights reserved.
//

#import "MoreThanHalfNumSolution_39.h"

/**
 题目描述:数组中出现次数超过一半的数字
 解题思路:多数投票问题，可以利用 Boyer-Moore Majority Vote Algorithm 来解决这个问题，使得时间复杂度为 O(N)。
 
 使用 cnt 来统计一个元素出现的次数，当遍历到的元素和统计元素相等时，令 cnt++，否则令 cnt--。如果前面查找了 i 个元素，且 cnt == 0，说明前 i 个元素没有 majority，或者有 majority，但是出现的次数少于 i / 2 ，因为如果多于 i / 2 的话 cnt 就一定不会为 0 。此时剩下的 n - i 个元素中，majority 的数目依然多于 (n - i) / 2，因此继续查找就能找出 majority。
 */

@implementation MoreThanHalfNumSolution_39

+ (int)MoreThanHalfNum_Solution:(NSArray *)nums {
    int majority = [nums vFI:0];
    for (int i = 1,cnt = 1; i < nums.count; i++) {
        cnt = [nums vFI:i] == majority ? cnt + 1 : cnt - 1;
        if (cnt == 0) {
            majority = [nums vFI:i];
            cnt = 1;
        }
    }
    int cnt = 0;
    for (NSNumber *num in nums) {
        if (num.intValue == majority) {
            cnt++;
        }
    }
    return cnt > nums.count / 2 ? majority : 0;
}

@end
