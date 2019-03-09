//
//  FindKthSmallest_40.m
//  OC_算法
//
//  Created by cs on 2018/11/29.
//  Copyright © 2018 cs. All rights reserved.
//

#import "FindKthSmallest_40.h"

/**
 40.最小的 K 个数
 解题思路:
 快速选择:1.复杂度：O(N) + O(1) 2.只有当允许修改数组元素时才可以使用
 备注:快速排序的 partition() 方法，会返回一个整数 j 使得 a[l..j-1] 小于等于 a[j]，且 a[j+1..h] 大于等于 a[j]，此时 a[j] 就是数组的第 j 大元素。可以利用这个特性找出数组的第 K 个元素，这种找第 K 个元素的算法称为快速选择算法。

 */

@implementation FindKthSmallest_40

+ (NSArray *)getLeasetNumbersSolution:(NSMutableArray *)nums k:(int)k {
    NSMutableArray *ret = [NSMutableArray array];
    if (k > nums.count || k <= 0) {
        return ret;
    }
    [self findKthSmallest:nums k:k];
    
    // findKthSmallest 会改变数组，使得前 k 个数都是最小的 k 个数
    for (int i = 0; i < k; i++) {
        [ret addObject:nums[i]];
    }
    
    return ret;
}

+ (void)findKthSmallest:(NSMutableArray *)nums k:(int)k {
    int l = 0, h = (int)nums.count - 1;
    while (l < h) {
        int j = [self partition:nums l:l h:h];
        if (j == k) {
            break;
        }
        if (j > k) {
            h = j - 1;
        } else {
            l = j + 1;
        }
    }
}

// 快速排序 - 切分元素
+ (int)partition:(NSMutableArray *)nums l:(int)l h:(int)h {
    int p = [nums vFI:l];   // 切分元素
    int i = l, j = h + 1;
    while (true) {
        while (i != h && [nums vFI:++i] < p);
        while (j != l && [nums vFI:--j] > p);
        
        if (i >= j) {
            break;
        }
        [self swap:nums i:i j:j];
    }
    [self swap:nums i:l j:j];
    return j;
}

+ (void)swap:(NSMutableArray *)nums i:(int)i j:(int)j {
    NSNumber *t = nums[i];
    nums[i] = nums[j];
    nums[j] = t;
}

@end
