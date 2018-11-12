//
//  ReConstructBinaryTree_07.h
//  OC_算法
//
//  Created by cs on 2018/9/25.
//  Copyright © 2018年 cs. All rights reserved.
//

#import <Foundation/Foundation.h>
@class BinaryTreeNode;

/**
 重建二叉树
 */
@interface ReConstructBinaryTree_07 : NSObject

/**
 根据二叉树的前序遍历和中序遍历的结果，重建出该二叉树

 @param preorders 前序遍历结果
 @param inorders 中序遍历结果
 */
+ (BinaryTreeNode *)reConstructBinaryTree:(NSArray *)preorders inorders:(NSArray *)inorders;

@end
