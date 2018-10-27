//
//  LinkedArray.h
//  OC_算法
//
//  Created by cs on 2018/9/25.
//  Copyright © 2018年 cs. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ListNode.h"

/**
 模拟链表实现
 */
@interface LinkedArray : NSObject

/** 数组长度 */
@property (assign , nonatomic) NSUInteger size;

/** 数组初始化 */
+ (instancetype)array;

/** 通过一个 number 数组返回一个链表 */
- (instancetype)initLiknedArrayWithNunbers:(NSArray *)numbers;

/** 添加元素 */
- (void)addObject:(NSObject *)obj;

/** 移除指定元素 */
- (void)remove:(NSObject *)obj;

/** 移除指定索引元素 */
- (void)removeAtIndex:(NSInteger)index;

/** 获取指定位置的值 */
- (NSObject *)objectAtIndex:(NSInteger)index;

/** 获取第一个节点 */
- (ListNode *)getFirstListNode;

/** 获取最后换一个节点 */
- (ListNode *)getLastListNode;

/** 获取指定位置节点 */
- (ListNode *)getListNodeAtIndex:(int)index;

/** 打印所有节点 */
- (void)printAllListNode;

@end
