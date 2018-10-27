//
//  BinaryTreeNode.h
//  OC_算法
//
//  Created by cs on 2018/9/27.
//  Copyright © 2018年 cs. All rights reserved.
//

#import <Foundation/Foundation.h>

/**
 二叉树节点
 */
@interface BinaryTreeNode : NSObject
/**
 *  值
 */
@property (nonatomic, assign) NSInteger value;
/**
 *  左节点
 */
@property (nonatomic, strong) BinaryTreeNode *leftNode;
/**
 *  右节点
 */
@property (nonatomic, strong) BinaryTreeNode *rightNode;

/**
 类工厂方法

 @param value 节点值
 @return 二叉树节点
 */
+ (BinaryTreeNode *)binaryTreeNodeWithValue:(NSInteger)value;

@end
