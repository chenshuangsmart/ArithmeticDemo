//
//  NSArray+Extension.h
//  OC_算法
//
//  Created by cs on 2018/10/27.
//  Copyright © 2018 cs. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSArray (Extension)

/** 获取数组中所有对象的描述,即将数组的值拼接成一个字符串 - 数组中所有对象都为 NSNumber 对象才可以 */
- (NSString *)getAllObjectsDescription;

/** 获取第 i 个位置的值 */
- (int)vFI:(NSUInteger)i;

/** 获取第 i行 j 列 位置的值 */
- (int)vFI:(NSUInteger)i j:(NSUInteger)j;

@end
