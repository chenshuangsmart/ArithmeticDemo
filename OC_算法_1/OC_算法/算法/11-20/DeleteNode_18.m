//
//  DeleteNode_18.m
//  OC_算法
//
//  Created by cs on 2018/10/25.
//  Copyright © 2018 cs. All rights reserved.
//

#import "DeleteNode_18.h"
#import "LinkedArray.h"

/**
 解题思路:
 1.如果该节点不是尾节点，那么可以直接将下一个节点的值赋给该节点，然后令该节点指向下下个节点，再删除下一个节点，时间复杂度为 O(1)。
 2.否则，就需要先遍历链表，找到节点的前一个节点，然后让前一个节点指向 null，时间复杂度为 O(N)。
 
 综上，如果进行 N 次操作，那么大约需要操作节点的次数为 N-1+N=2N-1，
 其中 N-1 表示 N-1 个不是尾节点的每个节点以 O(1) 的时间复杂度操作节点的总次数，N 表示 1 个尾节点以 O(N) 的时间复杂度操作节点的总次数。
 (2N-1)/N ~ 2，因此该算法的平均时间复杂度为 O(1)。
 */
@implementation DeleteNode_18

/** 删除节点 */
- (void)deleteNode {
    NSMutableArray *numbers = [NSMutableArray array];
    for (int i = 0; i < 10; i++) {
        [numbers addObject:@(i)];
    }
    LinkedArray *linkArray = [[LinkedArray alloc] initLiknedArrayWithNunbers:numbers];
    ListNode *headNode = [linkArray getFirstListNode];
    ListNode *lastDelNode = [linkArray getLastListNode];
    NSLog(@"---------------原始链表数据---------------");
    [headNode printAllListNode];
    
    ListNode *newHeadNode = [self deleteNode:headNode tagDelNode:lastDelNode];
    NSLog(@"---------------删除后链表数据---------------");
    [newHeadNode printAllListNode];
}

- (ListNode *)deleteNode:(ListNode *)headNode tagDelNode:(ListNode *)tagDelNode {
    // 头节点和要删除的节点为空
    if (headNode == nil || tagDelNode == nil) {
        return nil;
    }
    
    if (tagDelNode.next != nil) {   // 要删除的节点不是尾节点
        ListNode *next = tagDelNode.next;
        tagDelNode.content = next.content;
        tagDelNode.next = next.next;
    } else {
        ListNode *cur = headNode;
        while (cur.next != tagDelNode) {
            cur = cur.next;
        }
        cur.next = nil;
    }
    return headNode;
}

/** 删除 重复节点 */
- (void)deleteDuplicationNode {
    NSMutableArray *numbers = [NSMutableArray array];
    for (int i = 0; i < 10; i++) {
        if (i / 2 == 1) {
            [numbers addObject:@(2)];
        } else if (i / 3 == 1) {
            [numbers addObject:@(3)];
        } else {
            [numbers addObject:@(i)];
        }
    }
    LinkedArray *linkArray = [[LinkedArray alloc] initLiknedArrayWithNunbers:numbers];
    NSLog(@"----------------原始链表数据----------------");
    [linkArray printAllListNode];
    ListNode *firstNode = [linkArray getFirstListNode];
    ListNode *headNode = [self deleteDuplicationListNode:firstNode];
    NSLog(@"----------------删除重复节点后的链表数据----------------");
    [headNode printAllListNode];
}

// 删除重复节点
- (ListNode *)deleteDuplicationListNode:(ListNode *)pHeadNode {
    if (pHeadNode == nil || pHeadNode.next == nil) {
        return pHeadNode;
    }
    
    ListNode *next = pHeadNode.next;
    if (pHeadNode.value == next.value) {
        while (next != nil && pHeadNode.value == next.value) {
            next = next.next;
        }
        return [self deleteDuplicationListNode:next];
    } else {
        pHeadNode.next = [self deleteDuplicationListNode:pHeadNode.next];
        return pHeadNode;
    }
}

@end
