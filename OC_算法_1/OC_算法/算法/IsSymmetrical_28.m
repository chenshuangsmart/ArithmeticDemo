//
//  IsSymmetrical_28.m
//  OC_算法
//
//  Created by cs on 2018/11/7.
//  Copyright © 2018 cs. All rights reserved.
//

#import "IsSymmetrical_28.h"

@implementation IsSymmetrical_28

/// 对称的二叉树
+ (bool)isSymmetrical {
    // 构建二叉树
    BinaryTreeNode *root = [BinaryTreeNode binaryTreeNodeWithValue:1];
    BinaryTreeNode *rLeft = [BinaryTreeNode binaryTreeNodeWithValue:2];
    BinaryTreeNode *rRight = [BinaryTreeNode binaryTreeNodeWithValue:2];
    BinaryTreeNode *rLLeft = [BinaryTreeNode binaryTreeNodeWithValue:3];
    BinaryTreeNode *rLRight = [BinaryTreeNode binaryTreeNodeWithValue:4];
    BinaryTreeNode *rRLeft = [BinaryTreeNode binaryTreeNodeWithValue:4];
    BinaryTreeNode *rRRight = [BinaryTreeNode binaryTreeNodeWithValue:3];
    root.leftNode = rLeft;
    root.rightNode = rRight;
    rLeft.leftNode = rLLeft;
    rLeft.rightNode = rLRight;
    rRight.leftNode = rRLeft;
    rRight.rightNode = rRRight;
    
    return [self privateIsSymmetrical:root];
}

+ (bool)privateIsSymmetrical:(BinaryTreeNode *)pRoot {
    if (pRoot == nil) {
        return YES;
    }
    return [self privateIsSymmetrical:pRoot.leftNode t2:pRoot.rightNode];
}

+ (bool)privateIsSymmetrical:(BinaryTreeNode *)t1 t2:(BinaryTreeNode *)t2 {
    if (t1 == nil && t2 == nil) {
        return YES;
    }
    if (t1 == nil || t2 == nil) {
        return NO;
    }
    if (t1.value != t2.value) {
        return NO;
    }
    
    return [self privateIsSymmetrical:t1.leftNode t2:t2.rightNode] && [self privateIsSymmetrical:t1.rightNode t2:t2.leftNode];
}

@end
