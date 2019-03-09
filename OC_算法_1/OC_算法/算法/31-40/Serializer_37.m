//
//  Serializer_37.m
//  OC_算法
//
//  Created by cs on 2018/11/20.
//  Copyright © 2018 cs. All rights reserved.
//

#import "Serializer_37.h"

static NSString *deserializeStr = nil;

@implementation Serializer_37

+ (NSString *)serialize {
    // 先构建一颗二叉树
    TreeNode *root = [TreeNode treeNodeWithValue:1];
    TreeNode *left = [TreeNode treeNodeWithValue:2];
    TreeNode *right = [TreeNode treeNodeWithValue:3];
    root.leftNode = left;
    root.rightNode = right;
    
    return [self serialize:root];
}

+ (NSString *)serialize:(TreeNode *)root {
    if (root == nil) {
        return @"#";
    }
    return [NSString stringWithFormat:@"%ld %@ %@",root.value, [self serialize:root.leftNode], [self serialize:root.rightNode]];
}

// 反序列化二叉树
+ (TreeNode *)deserialize:(NSString *)str {
    deserializeStr = str;
    return [self deserialize];
}

+ (TreeNode *)deserialize {
    if (deserializeStr.length == 0) {
        return nil;
    }
    NSRange range = [deserializeStr rangeOfString:@" "];
    NSString *node = range.location == -1 ? deserializeStr : [deserializeStr substringWithRange:range];
    deserializeStr = range.location == -1 ? @"" : [deserializeStr substringFromIndex:range.location + 1];
    
    if ([node isEqualToString:@"#"]) {
        return nil;
    }
    NSUInteger value = [node integerValue];
    TreeNode *treeNode = [TreeNode treeNodeWithValue:value];
    treeNode.leftNode = [self deserialize];
    treeNode.rightNode = [self deserialize];
    
    return treeNode;
}

@end
