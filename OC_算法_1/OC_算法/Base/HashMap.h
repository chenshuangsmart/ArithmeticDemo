//
//  HashMap.h
//  OC_算法
//
//  Created by cs on 2018/9/28.
//  Copyright © 2018年 cs. All rights reserved.
//

#import <Foundation/Foundation.h>

/**
 模拟哈希表
 */
@interface HashMap : NSObject

/**
 插入新值

 @param value 值
 @param index 索引
 */
- (void)put:(int)value index:(int)index;

/**
 根据值,返回其索引

 @param value 值
 @return 索引
 */
- (int)get:(int)value;

@end
