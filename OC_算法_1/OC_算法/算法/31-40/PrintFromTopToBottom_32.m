//
//  PrintFromTopToBottom_32.m
//  OC_算法
//
//  Created by cs on 2018/11/13.
//  Copyright © 2018 cs. All rights reserved.
//

#import "PrintFromTopToBottom_32.h"

@implementation PrintFromTopToBottom_32

/**
 题目描述:从上往下打印出二叉树的每个节点，同层节点从左至右打印。
 解题思路:使用队列来进行层次遍历。
 不需要使用两个队列分别存储当前层的节点和下一层的节点，因为在开始遍历一层的节点时，当前队列中的节点数就是当前层的节点数，只要控制遍历这么多节点数，就能保证这次遍历的都是当前层的节点。
 */
+ (void)printFromTopToBottom:(NSArray *)numbers {
    
}

@end
