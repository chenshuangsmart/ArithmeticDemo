//
//  ListNode.h
//  OC_算法
//
//  Created by cs on 2018/9/25.
//  Copyright © 2018年 cs. All rights reserved.
//

#import <Foundation/Foundation.h>

/**
 模拟链表实现
 */
@interface ListNode : NSObject

/** 上个节点 */
@property (strong , nonatomic) ListNode *previous;

/** 下个节点 */
@property (strong , nonatomic) ListNode *next;

/** 当前节点内容 */
@property (strong , nonatomic) id content;

/** int */
@property(nonatomic, assign) int value;

/** 打印从当前节点开始之后所有的节点数据 */
- (void)printAllListNode;

@end
