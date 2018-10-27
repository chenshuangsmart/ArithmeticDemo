//
//  PrintListFromTailToHead_06.h
//  OC_算法
//
//  Created by cs on 2018/9/21.
//  Copyright © 2018年 cs. All rights reserved.
//

#import <Foundation/Foundation.h>

/** 06.从尾到头打印链表 */
@interface PrintListFromTailToHead_06 : NSObject

/** 使用栈 */
+ (NSArray *)printListFromTailToHeadByShed:(NSArray *)numbers;

/** 使用递归 */
+ (NSArray *)printListFromTailToHeadByRecursion:(NSArray *)numbers;

/** 使用头插法 */
+ (NSArray *)printListFromTailToHeadByInsert:(NSArray *)numbers;

/** 使用Collection reverse*/
+ (NSArray *)printListFromTailToHeadByReverse:(NSArray *)numbers;

@end
