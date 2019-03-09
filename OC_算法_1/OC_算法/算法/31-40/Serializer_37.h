//
//  Serializer_37.h
//  OC_算法
//
//  Created by cs on 2018/11/20.
//  Copyright © 2018 cs. All rights reserved.
//

#import <Foundation/Foundation.h>

/**
 37 题目描述:请实现两个函数，分别用来序列化和反序列化二叉树。
 */
@interface Serializer_37 : NSObject

// 序列化
+ (NSString *)serialize;

// 发序列化
+ (TreeNode *)deserialize:(NSString *)str;

@end
