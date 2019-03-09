//
//  PrintFromTopToBottom_32.h
//  OC_算法
//
//  Created by cs on 2018/11/13.
//  Copyright © 2018 cs. All rights reserved.
//

#import <Foundation/Foundation.h>

/**
 32 打印二叉树
 */
@interface PrintFromTopToBottom_32 : NSObject

/// 从上往下打印出二叉树的每个节点，同层节点从左至右打印。
+ (void)printFromTopToBottom:(NSArray *)numbers;

@end
