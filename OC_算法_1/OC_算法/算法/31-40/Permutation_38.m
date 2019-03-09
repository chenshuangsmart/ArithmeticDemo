//
//  Permutation_38.m
//  OC_算法
//
//  Created by cs on 2018/11/27.
//  Copyright © 2018 cs. All rights reserved.
//

#import "Permutation_38.h"

static NSArray *ret;

/**
 题目描述:
 输入一个字符串，按字典序打印出该字符串中字符的所有排列。例如输入字符串 abc，则打印出由字符 a, b, c 所能排列出来的所有字符串 abc, acb, bac, bca, cab 和 cba。
 */

@implementation Permutation_38

+ (NSArray *)permutation:(NSString *)str{
    if (str.length == 0) {
        return ret;
    }
    NSArray *chars = [self strToArray:str];
    
    return  ret;
}

+ (NSArray *)strToArray:(NSString *)str {
    NSMutableArray *strs = [NSMutableArray array];
    for (int i = 0; i < str.length; i++) {
        [strs addObject:[str substringWithRange:NSMakeRange(i, i)]];
    }
    return strs.copy;
}

@end
