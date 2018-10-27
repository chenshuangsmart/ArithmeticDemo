//
//  IsNumeric_20.m
//  OC_算法
//
//  Created by cs on 2018/10/27.
//  Copyright © 2018 cs. All rights reserved.
//

#import "IsNumeric_20.h"

/**
 表示数值的字符串
 
 题目描述:
 true:"+100", "5e2", "-123", "3.1416", "-1E-16"
 false:"12e", "1a3.14", "1.2.3", "+-5", "12e+4.3"
 
 解题思路:使用正则表达式进行匹配。
 []  ： 字符集合
 ()  ： 分组
 ?   ： 重复 0 ~ 1
 +   ： 重复 1 ~ n
 *   ： 重复 0 ~ n
 .   ： 任意字符
 \\. ： 转义后的 .
 \\d ： 数字
 */
@implementation IsNumeric_20

@end
