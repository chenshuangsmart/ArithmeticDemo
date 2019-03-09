//
//  TreeNode.h
//  OC_算法
//
//  Created by cs on 2018/11/19.
//  Copyright © 2018 cs. All rights reserved.
//

#import <Foundation/Foundation.h>

/**
 二叉树节点
 */
@interface TreeNode : NSObject
/**
 *  值
 */
@property (nonatomic, assign) NSInteger value;
/**
 *  左节点
 */
@property (nonatomic, strong) TreeNode *leftNode;
/**
 *  右节点
 */
@property (nonatomic, strong) TreeNode *rightNode;

/**
 类工厂方法
 
 @param value 节点值
 @return 二叉树节点
 */
+ (TreeNode *)treeNodeWithValue:(NSInteger)value;

@end
