//
//  HasSubTree_26.m
//  OC_算法
//
//  Created by cs on 2018/11/6.
//  Copyright © 2018 cs. All rights reserved.
//

#import "HasSubTree_26.h"

@implementation HasSubTree_26

/// 是否有子树
+ (bool)hasSubTree {
    // 构建一个二叉树
    return NO;
}

+ (bool)isSubTreeWithRootNode:(BinaryTreeNode *)root1 root2:(BinaryTreeNode *)root2 {
    if (root2 == nil) {
        return YES;
    }
    if (root1 == nil){
        return NO;
    }
    if (root1.value != root2.value) {
        return NO;
    }
    
    return [self isSubTreeWithRootNode:root1.leftNode root2:root2.leftNode] && [self isSubTreeWithRootNode:root1.rightNode root2:root2.rightNode];
}

@end
