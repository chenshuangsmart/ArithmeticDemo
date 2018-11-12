//
//  FindKthToTail_22.m
//  OC_算法
//
//  Created by cs on 2018/10/30.
//  Copyright © 2018 cs. All rights reserved.
//

#import "FindKthToTail_22.h"
#import "LinkedArray.h"

 /**
 22.链表中倒数第 K 个结点
 解题思路:设链表的长度为 N。设两个指针 P1 和 P2，先让 P1 移动 K 个节点，则还有 N - K 个节点可以移动。此时让 P1 和 P2 同时移动，可以知道当 P1 移动到链表结尾时，P2 移动到 N - K 个节点处，该位置就是倒数第 K 个节点。
 */
@implementation FindKthToTail_22

+ (ListNode *)findKthToTail:(NSArray *)numbers index:(int)index {
    if (index >= numbers.count) {
        return nil;
    }
    
    LinkedArray *linkList = [[LinkedArray alloc] initLiknedArrayWithNunbers:numbers];
    ListNode *headNode = [linkList getFirstListNode];
    
    if (headNode == nil) {  // 头结点为空
        return nil;
    }
    
    ListNode *p1 = headNode;
    while (p1 != nil && index-- > 0) {
        p1 = p1.next;
    }
    
    if (index > 0) {    // 表示 index 的值大于链表的长度
        return nil;
    }
    
    ListNode *p2 = headNode;
    // 此时让 P1 和 P2 同时移动，可以知道当 P1 移动到链表结尾时，P2 移动到 N - K 个节点处，该位置就是倒数第 K 个节点。
    while (p1 != nil) {
        p1 = p1.next;
        p2 = p2.next;
    }
    
    return p2;
}
@end
