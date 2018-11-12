//
//  EntryNodeOfLoop_23.m
//  OC_算法
//
//  Created by cs on 2018/10/31.
//  Copyright © 2018 cs. All rights reserved.
//

#import "EntryNodeOfLoop_23.h"
#import "ListNode.h"
#import "LinkedArray.h"

/**
 链表中环的入口结点
 题目描述:一个链表中包含环，请找出该链表的环的入口结点。要求不能使用额外的空间。
 
 解题思路:
 使用双指针，一个指针 fast 每次移动两个节点，一个指针 slow 每次移动一个节点。因为存在环，所以两个指针必定相遇在环中的某个节点上。假设相遇点在下图的 y6 位置，此时 fast 移动的节点数为 x+2y+z，slow 为 x+y，由于 fast 速度比 slow 快一倍，因此 x+2y+z=2(x+y)，得到 x=z。
 
 在相遇点，slow 要到环的入口点还需要移动 z 个节点，如果让 fast 重新从头开始移动，并且速度变为每次移动一个节点，那么它到环入口点还需要移动 x 个节点。在上面已经推导出 x=z，因此 fast 和 slow 将在环入口点相遇。
 */
@implementation EntryNodeOfLoop_23

+ (ListNode *)entryNodeOfLoop {
    // 构造闭环链表
    NSMutableArray *numbers = [NSMutableArray array];
    for (int i = 0; i < 10; i++) {
        [numbers addObject:[NSNumber numberWithInt:i]];
    }
    // 1.构造闭环链表
    LinkedArray *nodeList = [[LinkedArray alloc] initLiknedArrayWithNunbers:numbers];
    ListNode *pHead = [nodeList getFirstListNode];
    ListNode *pLast = [nodeList getLastListNode];
    pLast.next = pHead; // 构造一个闭环
    // 入口节点
    ListNode *entryNode = [nodeList getListNodeAtIndex:5];
    
    // 构造入口节点
    ListNode *firstNode = [[ListNode alloc] init];
    firstNode.content = [NSNumber numberWithInt:20];
    ListNode *secondNode = [[ListNode alloc] init];
    secondNode.content = [NSNumber numberWithInt:30];
    firstNode.next = secondNode;
    
    // 联通入口节点
    secondNode.next = entryNode;
    
    if (pHead == nil || pHead.next == nil) {
        return nil;
    }
    
    ListNode *slow = firstNode;
    ListNode *fast = firstNode;
    
    do {
        fast = fast.next.next;
        slow = slow.next;
    } while (slow != fast);
    
    // 让 fast 重新从头开始移动
    fast = pHead;
    while (slow != fast) {
        slow = slow.next;
        fast = fast.next;
    }
    
    return slow;
}

@end
