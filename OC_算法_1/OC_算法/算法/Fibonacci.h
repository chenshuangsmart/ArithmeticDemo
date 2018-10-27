//
//  Fibonacci.h
//  OC_算法
//
//  Created by cs on 2018/10/9.
//  Copyright © 2018 cs. All rights reserved.
//

#import <Foundation/Foundation.h>

/**
 10.1 斐波那契数列
 */
@interface Fibonacci : NSObject

// 求斐波那契数列
+ (int)Fibonacci:(int)number;

/**
 10.2 跳台阶
 一只青蛙一次可以跳上 1 级台阶，也可以跳上 2 级。求该青蛙跳上一个 n 级的台阶总共有多少种跳法。
 */
+ (int)jumpFloor:(int)number;

/**
 10.3 变态跳台阶
 一只青蛙一次可以跳上 1 级台阶，也可以跳上 2 级... 它也可以跳上 n 级。求该青蛙跳上一个 n 级的台阶总共有多少种跳法。
 */
+ (int)jumpFloor2:(int)number;

/**
 10.4 矩形覆盖
 我们可以用 2*1 的小矩形横着或者竖着去覆盖更大的矩形。请问用 n 个 2*1 的小矩形无重叠地覆盖一个 2*n 的大矩形，总共有多少种方法？
 */
+ (int)rectCover:(int)number;

@end
