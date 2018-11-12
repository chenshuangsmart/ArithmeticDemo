//
//  MergeTwoListNode_25.m
//  OC_算法
//
//  Created by cs on 2018/11/5.
//  Copyright © 2018 cs. All rights reserved.
//

#import "MergeTwoListNode_25.h"

@implementation MergeTwoListNode_25

/**
 递归 合并两个排序的链表
 
 @param number1s 链表1
 @param numbers2 链表2
 @return 合并后的链表
 */
+ (ListNode *)mergeByRecursionWith:(NSArray *)number1s numbers2:(NSArray *)numbers2 {
    LinkedArray *list1 = [[LinkedArray alloc] initLiknedArrayWithNunbers:number1s];
    ListNode *listNode1 = [list1 getFirstListNode];
    LinkedArray *list2 = [[LinkedArray alloc] initLiknedArrayWithNunbers:numbers2];
    ListNode *listNode2 = [list2 getFirstListNode];
    
    return [self mergeByRecursionWith:listNode1 listNode2:listNode2];
}

+ (ListNode *)mergeByRecursionWith:(ListNode *)listNode1 listNode2:(ListNode *)listNode2 {
    if (listNode1 == nil) {
        return listNode2;
    }
    if (listNode2 == nil) {
        return listNode1;
    }
    if (listNode1.value <= listNode2.value) {
        listNode1.next = [self mergeByRecursionWith:listNode1.next listNode2:listNode2];
        return listNode1;
    } else {
        listNode2.next = [self mergeByRecursionWith:listNode1 listNode2:listNode2.next];
        return listNode2;
    }
}

/**
 迭代 合并两个排序的链表
 
 @param number1s 链表1
 @param numbers2 链表2
 @return 合并后的链表
 */
+ (ListNode *)mergeByIterationWith:(NSArray *)number1s numbers2:(NSArray *)numbers2 {
    LinkedArray *list1 = [[LinkedArray alloc] initLiknedArrayWithNunbers:number1s];
    ListNode *listNode1 = [list1 getFirstListNode];
    LinkedArray *list2 = [[LinkedArray alloc] initLiknedArrayWithNunbers:numbers2];
    ListNode *listNode2 = [list2 getFirstListNode];
    
    ListNode *headNode = [[ListNode alloc] init];
    ListNode *curNode = headNode;
    
    while (listNode1 != nil && listNode2 != nil) {
        if (listNode1.value <= listNode2.value) {
            curNode.next = listNode1;
            listNode1 = listNode1.next;
        } else {
            curNode.next = listNode2;
            listNode2 = listNode2.next;
        }
        curNode = curNode.next;
    }
    if (listNode1 != nil) {
        curNode.next = listNode1;
    }
    if (listNode2 != nil) {
        curNode.next = listNode2;
    }
    
    return headNode.next;
}
@end
