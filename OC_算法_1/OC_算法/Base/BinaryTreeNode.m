//
//  BinaryTreeNode.m
//  OC_算法
//
//  Created by cs on 2018/9/27.
//  Copyright © 2018年 cs. All rights reserved.
//

#import "BinaryTreeNode.h"

@implementation BinaryTreeNode

+ (BinaryTreeNode *)binaryTreeNodeWithValue:(NSInteger)value {
    BinaryTreeNode *treeNode = [[BinaryTreeNode alloc] init];
    treeNode.value = value;
    return treeNode;
}

@end
