//
//  ReverseList_24.m
//  OC_算法
//
//  Created by cs on 2018/11/1.
//  Copyright © 2018 cs. All rights reserved.
//

#import "ReverseList_24.h"
#import "LinkedArray.h"

@implementation ReverseList_24

// 反转链表
+ (ListNode *)reverseList:(NSArray *)numbers {
    LinkedArray *linkArray = [[LinkedArray alloc] initLiknedArrayWithNunbers:numbers];
    ListNode *headNode = [linkArray getFirstListNode];
    
    if (headNode == nil || headNode.next == nil) {
        return headNode;
    }
    
    ListNode *next = headNode.next;
    headNode.next = nil;
    ListNode *newHead = [self reverList:next];
    next.next = headNode;
    
    return newHead;
}

+ (ListNode *)reverList:(ListNode *)head {
    ListNode *newList = [[ListNode alloc] init];
    while (head != nil) {
        ListNode *next = head.next;
        head.next = newList.next;
        newList.next = head;
        head = next;
    }
    return newList.next;
}
@end
