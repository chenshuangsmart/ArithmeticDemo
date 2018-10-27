//
//  MinNumberInRotateArray.h
//  OC_算法
//
//  Created by cs on 2018/10/11.
//  Copyright © 2018 cs. All rights reserved.
//

#import <Foundation/Foundation.h>

/**
 旋转数组的最小数字
 */
@interface MinNumberInRotateArray : NSObject

/** 折半查找最小值 */
+ (int)minNumberInRotateArray:(NSArray *)nums;

/** 折半查找 - 带重复数字*/
+ (int)minNumberInRotateArray2:(NSArray *)nums;

@end
