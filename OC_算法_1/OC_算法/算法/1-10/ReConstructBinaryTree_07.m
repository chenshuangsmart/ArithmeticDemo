//
//  ReConstructBinaryTree_07.m
//  OC_算法
//
//  Created by cs on 2018/9/25.
//  Copyright © 2018年 cs. All rights reserved.
//

#import "ReConstructBinaryTree_07.h"
#import "BinaryTreeNode.h"
#import "HashMap.h"

/**
 根据二叉树的前序遍历和中序遍历的结果，重建出该二叉树。假设输入的前序遍历和中序遍历的结果中都不含重复的数字。
 二叉树如下:
        3
    9       20
        15      7
 
 前序遍历 preorder = [3,9,20,15,7]
 中序遍历 inorder =  [9,3,15,20,7]
 
 解题思路
 前序遍历的第一个值为根节点的值，使用这个值将中序遍历结果分成两部分，左部分为树的左子树中序遍历结果，右部分为树的右子树中序遍历的结果。
 */

@implementation ReConstructBinaryTree_07

+ (BinaryTreeNode *)reConstructBinaryTree:(NSArray *)preorders inorders:(NSArray *)inorders {
    // 初始化哈希表
    HashMap *indexForInOrders = [[HashMap alloc] init];
    
    for (int i = 0; i < inorders.count; i++) {
        [indexForInOrders put:[inorders[i] intValue] index:i];
    }
    
    return [self reConstructBinaryTreeWithOrders:indexForInOrders preorders:preorders preL:0 preR:(int)preorders.count - 1 inL:0];
}

+ (BinaryTreeNode *)reConstructBinaryTreeWithOrders:(HashMap *)indexForInOrders preorders:(NSArray *)preorders preL:(int)preL preR:(int)preR inL:(int)inL {
    if (preL > preR) {
        return nil;
    }
    
    // 取左边二叉树的值构成一个新的节点
    BinaryTreeNode *root = [BinaryTreeNode binaryTreeNodeWithValue:[preorders[preL] integerValue]];
    int inIndex = [indexForInOrders get:(int)root.value];
    int leftTreeSize = inIndex - inL;
    
    root.leftNode = [self reConstructBinaryTreeWithOrders:indexForInOrders preorders:preorders preL:preL + 1 preR:preL + leftTreeSize inL:inL];
    root.rightNode = [self reConstructBinaryTreeWithOrders:indexForInOrders preorders:preorders preL:preL + leftTreeSize + 1 preR:preR inL:inL + leftTreeSize + 1];
    
    return root;
}

@end
