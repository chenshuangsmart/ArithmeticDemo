//
//  InOrder_36.m
//  OC_算法
//
//  Created by cs on 2018/11/19.
//  Copyright © 2018 cs. All rights reserved.
//

#import "InOrder_36.h"

static TreeNode *pre = nil;
static TreeNode *head = nil;

/**
 题目描述:输入一棵二叉搜索树，将该二叉搜索树转换成一个排序的双向链表。要求不能创建任何新的结点，只能调整树中结点指针的指向。
 */
@implementation InOrder_36

+ (TreeNode *)convert {
    TreeNode *root = nil;
    [self inOrder:root];
    return head;
}

+ (void)inOrder:(TreeNode *)node {
    if (node == nil) {
        return;
    }
    [self inOrder:node.leftNode];
    node.leftNode = pre;
    
    if (pre != nil) {
        pre.rightNode = node;
    }
    pre = node;
    if (head == nil) {
        head = node;
    }
    [self inOrder:node.rightNode];
}


@end
