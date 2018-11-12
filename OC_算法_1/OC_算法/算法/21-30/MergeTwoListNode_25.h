//
//  MergeTwoListNode_25.h
//  OC_算法
//
//  Created by cs on 2018/11/5.
//  Copyright © 2018 cs. All rights reserved.
//

#import <UIKit/UIKit.h>

/**
 25. 合并两个排序的链表
 */
@interface MergeTwoListNode_25 : UIView

/**
 递归 合并两个排序的链表

 @param number1s 链表1
 @param numbers2 链表2
 @return 合并后的链表
 */
+ (ListNode *)mergeByRecursionWith:(NSArray *)number1s numbers2:(NSArray *)numbers2;

/**
 迭代 合并两个排序的链表
 
 @param number1s 链表1
 @param numbers2 链表2
 @return 合并后的链表
 */
+ (ListNode *)mergeByIterationWith:(NSArray *)number1s numbers2:(NSArray *)numbers2;


@end
