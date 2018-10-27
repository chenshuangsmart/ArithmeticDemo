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

@property (assign , nonatomic) NSUInteger size; //数组长度

- (void)addObject:(NSObject *)obj; //添加元素

- (void)remove:(NSObject *)obj; //移除指定元素

- (void)removeAtIndex:(NSInteger)index; //移除指定索引元素

- (NSObject *)objectAtIndex:(NSInteger)index;  //获取指定位置的值

// 获取第一个节点
- (ListNode *)getFirstListNode;

// 获取最后换一个节点
- (ListNode *)getLastListNode;

// 获取指定位置节点
- (ListNode *)getListNodeAtIndex:(int)index;

+ (instancetype)array; //数组初始化

// 打印所有节点
- (void)printAllListNode;

@end
