//
//  MirrorTree_27.m
//  OC_算法
//
//  Created by cs on 2018/11/7.
//  Copyright © 2018 cs. All rights reserved.
//

#import "MirrorTree_27.h"

@implementation MirrorTree_27

/** 二叉树的镜像 */
+ (void)mirror {
    // 构建一颗二叉树
    BinaryTreeNode *root = [BinaryTreeNode binaryTreeNodeWithValue:1];
    BinaryTreeNode *left = [BinaryTreeNode binaryTreeNodeWithValue:2];
    BinaryTreeNode *right = [BinaryTreeNode binaryTreeNodeWithValue:3];
    root.leftNode = left;
    root.rightNode = right;
    
    NSLog(@"交换前:%@",root);
    [self privateMirror:root];
    NSLog(@"交换后:%@",root);
}

+ (void)privateMirror:(BinaryTreeNode *)root {
    if (root == nil) {
        return;
    }
    // 交换左右节点
    [self swapTreeNode:root];
    [self privateMirror:root.leftNode];
    [self privateMirror:root.rightNode];
}

+ (void)swapTreeNode:(BinaryTreeNode *)root {
    BinaryTreeNode *t = root.leftNode;
    root.leftNode = root.rightNode;
    root.rightNode = t;
}

@end
