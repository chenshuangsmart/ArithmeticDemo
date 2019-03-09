//
//  TreeNode.m
//  OC_算法
//
//  Created by cs on 2018/11/19.
//  Copyright © 2018 cs. All rights reserved.
//

#import "TreeNode.h"

@implementation TreeNode

+ (TreeNode *)treeNodeWithValue:(NSInteger)value {
    TreeNode *treeNode = [[TreeNode alloc] init];
    treeNode.value = value;
    return treeNode;
}

@end
