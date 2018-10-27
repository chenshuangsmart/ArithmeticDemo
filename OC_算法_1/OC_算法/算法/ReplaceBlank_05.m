//
//  ReplaceBlank_05.m
//  OC_算法
//
//  Created by cs on 2018/9/19.
//  Copyright © 2018年 cs. All rights reserved.
//

#import "ReplaceBlank_05.h"

/**
 5.替换空格
 题目描述:将一个字符串中的空格替换成 "%20"。
 解题思路:在字符串尾部填充任意字符，使得字符串的长度等于替换之后的长度。因为一个空格要替换成三个字符（%20），因此当遍历到一个空格时，需要在尾部填充两个任意字符。
 
 令 P1 指向字符串原来的末尾位置，P2 指向字符串现在的末尾位置。P1 和 P2从后向前遍历，当 P1 遍历到一个空格时，就需要令 P2 指向的位置依次填充 02%（注意是逆序的），否则就填充上 P1 指向字符的值。
 
 从后向前遍是为了在改变 P2 所指向的内容时，不会影响到 P1 遍历原来字符串的内容。
 */

@implementation ReplaceBlank_05

+ (NSString *)replaceSpace:(NSString *)str {
    int p1 = (int)str.length - 1;
    NSMutableString *strM = [NSMutableString stringWithString:str];
    
    // 1.将在原来的空格后面再加上2个空格
    for (int i = 0; i < p1 + 1; i++) {
        NSString *temp = [str substringWithRange:NSMakeRange(i, 1)];
        if ([temp isEqualToString:@" "]) {
            [strM appendString:@"  "];
        }
    }
    
    // p1 p2依次从后往前遍历
    int p2 = (int)strM.length - 1;
    while (p1 >= 0 && p2 >= 0) {
        NSString *temp = [strM substringWithRange:NSMakeRange(p1--, 1)];
        if ([temp isEqualToString:@" "]) {  // 发现空格 - 逆序填充02%
            [strM replaceCharactersInRange:NSMakeRange(p2--, 1) withString:@"0"];
            [strM replaceCharactersInRange:NSMakeRange(p2--, 1) withString:@"2"];
            [strM replaceCharactersInRange:NSMakeRange(p2--, 1) withString:@"%"];
        } else {
            [strM replaceCharactersInRange:NSMakeRange(p2--, 1) withString:temp];
        }
    }
    
    return strM.copy;
}

@end
