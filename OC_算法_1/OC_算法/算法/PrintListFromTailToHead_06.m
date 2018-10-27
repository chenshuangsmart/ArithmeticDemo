//
//  PrintListFromTailToHead_06.m
//  OC_算法
//
//  Created by cs on 2018/9/21.
//  Copyright © 2018年 cs. All rights reserved.
//

#import "PrintListFromTailToHead_06.h"
#import "LinkedArray.h"
#import "ListNode.h"
#import "Stack.h"

/**
 题目描述: 输入链表的第一个节点，从尾到头反过来打印出每个结点的值。
 */

@implementation PrintListFromTailToHead_06

/** 使用栈 */
+ (NSArray *)printListFromTailToHeadByShed:(NSArray *)numbers {
    LinkedArray *linkedArray = [[LinkedArray alloc] initLiknedArrayWithNunbers:numbers];
    // 第一个节点
    ListNode *listNode = [linkedArray getFirstListNode];
    
    return [self getListFromTailToHead:listNode];
}

/** 使用递归 */
+ (NSArray *)printListFromTailToHeadByRecursion:(NSArray *)numbers {
    LinkedArray *linkedArray = [[LinkedArray alloc] initLiknedArrayWithNunbers:numbers];
    // 第一个节点
    ListNode *listNode = [linkedArray getFirstListNode];
    
    NSMutableArray *values = [NSMutableArray array];
    if (listNode != nil) {
        [values addObjectsFromArray:[self getListFromTailToHead:listNode.next]];
        [values addObject:listNode.content];
    }
    
    return values;
}

/**
 使用头插法
 利用链表头插法为逆序的特点。
 头结点和第一个节点的区别：
 
 * 头结点是在头插法中使用的一个额外节点，这个节点不存储值；
 * 第一个节点就是链表的第一个真正存储值的节点。
 */
+ (NSArray *)printListFromTailToHeadByInsert:(NSArray *)numbers {
    LinkedArray *linkedArray = [[LinkedArray alloc] initLiknedArrayWithNunbers:numbers];
    // 第一个节点
    ListNode *listNode = [linkedArray getFirstListNode];
    
    // 头插法构建逆序链表
    ListNode *head = [[ListNode alloc] init];
    while (listNode != nil) {
        ListNode *memo = listNode.next;
        listNode.next = head.next;
        head.next = listNode;
        listNode = memo;
    }
    // 构建 ArrayList
    NSMutableArray *values = [NSMutableArray array];
    head = head.next;
    while (head != nil) {
        [values addObject:head.content];
        head = head.next;
    }
    
    return values;
}

/** 使用Collection reverse*/
+ (NSArray *)printListFromTailToHeadByReverse:(NSArray *)numbers {
    LinkedArray *linkedArray = [[LinkedArray alloc] initLiknedArrayWithNunbers:numbers];
    // 第一个节点
    ListNode *listNode = [linkedArray getFirstListNode];
    
    // 构建 ArrayList
    NSMutableArray *values = [NSMutableArray array];
    while (listNode != nil) {
        [values addObject:listNode.content];
        listNode = listNode.next;
    }
    
    NSArray *newArr = [[values reverseObjectEnumerator] allObjects];
    
    return newArr;
}

#pragma mark - private function

// 使用栈
+ (NSArray *)getListFromTailToHead:(ListNode *)listNode {
    // 创建一个栈
    Stack *stack = [[Stack alloc] init];
    
    // 开始从第一个节点依次往后遍历,将数据全部入栈
    while (listNode != nil) {
        [stack push:listNode.content];
        listNode = listNode.next;
    }
    
    NSMutableArray *values = [NSMutableArray array];
    // 依次将栈出列并存储
    while (!stack.isEmpty) {
        [values addObject:stack.popObj];
    }
    
    return values.copy;
}

@end
