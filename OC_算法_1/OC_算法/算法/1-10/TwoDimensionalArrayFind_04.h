//
//  TwoDimensionalArrayFind_04.h
//  OC_算法
//
//  Created by cs on 2018/9/19.
//  Copyright © 2018年 cs. All rights reserved.
//

#import <Foundation/Foundation.h>

/**
 二维数组中的查找
 */
@interface TwoDimensionalArrayFind_04 : NSObject

/**
 在二维数组中查找

 @param number 要查找的数字
 @param numbers 二维数组 - 如果传 nil, 则会用默认的二维数组
 @return 是否查找到
 */
+ (bool)findNumber:(int)number numbers:(NSArray *)numbers;

@end
