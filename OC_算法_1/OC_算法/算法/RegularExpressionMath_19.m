//
//  RegularExpressionMath_19.m
//  OC_算法
//
//  Created by cs on 2018/10/27.
//  Copyright © 2018 cs. All rights reserved.
//

#import "RegularExpressionMath_19.h"

/**
 正则表达式匹配
 
 题目描述:
 1.请实现一个函数用来匹配包括 '.' 和 '*' 的正则表达式。模式中的字符 '.' 表示任意一个字符，而 '*' 表示它前面的字符可以出现任意次（包含 0 次）。
 2.在本题中，匹配是指字符串的所有字符匹配整个模式。例如，字符串 "aaa" 与模式 "a.a" 和 "ab*ac*a" 匹配，但是与 "aa.a" 和 "ab*a" 均不匹配。
 
 解题思路:应该注意到，'.' 是用来当做一个任意字符，而 '*' 是用来重复前面的字符。这两个的作用不同，不能把 '.' 的作用和 '*' 进行类比，从而把它当成重复前面字符一次。
 */
@implementation RegularExpressionMath_19

@end
