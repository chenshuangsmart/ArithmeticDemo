//
//  LinkedArray.m
//  OC_算法
//
//  Created by cs on 2018/9/25.
//  Copyright © 2018年 cs. All rights reserved.
//

#import "LinkedArray.h"

@interface LinkedArray()

@property (nonatomic, strong) ListNode *first; //首个节点

@property (nonatomic, strong) ListNode *last; //最后节点

@end

@implementation LinkedArray

//构造方法
+ (instancetype)array {
    return [[self alloc]init];
}

/** 通过一个 number 数组返回一个链表 */
- (instancetype)initLiknedArrayWithNunbers:(NSArray *)numbers {
    self = [super init];
    if (self) {
        [self createLinkedArray:numbers];
    }
    return self;
}

#pragma mark - add

//添加元素
- (void)addObject:(NSObject *)obj {
    
    if (!obj) return;
    _size ++ ;
    
    ListNode *node = [[ListNode alloc]init];
    //首个节点为空
    if (!_first) {
        _first = node;
        _last = node;
        node.previous = nil;
        node.next = nil;
        node.content = obj;
        return;
    }
    
    //数组中有值
    node.previous = _last;
    _last.next = node;
    node.next     = nil;
    node.content  = obj;
    _last         = node;
}

#pragma mark - remove

//移除元素
- (void)remove:(NSObject *)obj {
    if (!obj||!_size) return;
    
    ListNode *tmpNode = _first;
    
    for (NSInteger index = 0; index < _size; index ++) {
        if ([tmpNode.content isEqual:obj]) {
            [self removeNode:tmpNode]; //移除节点
            break;
        }
    }
}

//根据索引移除元素
- (void)removeAtIndex:(NSInteger)index {
    if (index<0||index>=_size) return;
    
    ListNode *tmpNode = _first;
    
    for (NSInteger i = 0; i < _size; i ++) {
        if (i == index) {
            [self removeNode:tmpNode]; //移除节点
            break;
        }
        tmpNode = tmpNode.next;
    }
}

#pragma mark - get

//获取指定索引元素
- (NSObject *)objectAtIndex:(NSInteger)index {
    if (index<0||index>=_size) return nil;
    
    ListNode *tmpNode = _first;
    
    for (NSInteger i = 0; i < _size; i ++) {
        if (i == index) {
            return tmpNode.content;
        }
        tmpNode = tmpNode.next;
    }
    return nil;
}

#pragma mark - get

- (ListNode *)getFirstListNode {
    return _first;
}

- (ListNode *)getLastListNode {
    return _last;
}

// 获取指定位置节点
- (ListNode *)getListNodeAtIndex:(int)index {
    if (index >= _size) {
        return nil;
    }
    if (_first == nil) {
        return nil;
    }
    ListNode *curListNode = _first.next;
    for (int i = 0; i < index; i++) {
        curListNode = curListNode.next;
    }
    
    return curListNode;
}

#pragma mark - other function

// 打印所有节点
- (void)printAllListNode {
    ListNode *curNode = [self getFirstListNode];
    if (curNode == nil) {
        return;
    }
    while (curNode) {
        ListNode *preNode = curNode.previous;
        ListNode *nextNode = curNode.next;
        NSLog(@"curNode=%p, value=%d, preNode=%p, nextNode=%p",curNode, curNode.value, preNode, nextNode);
        curNode = curNode.next;
    }
}

#pragma mark - private

//私有
- (void)removeNode:(ListNode *)node {
    //连接上下节点
    ListNode *preNode = node.previous;
    ListNode *nextNode = node.next;
    preNode.next = nextNode;
    nextNode.previous = preNode;
    node.content = nil; //清空被移除节点内容
    _size -- ;//长度更新
}

// 初始化一个链表
- (void)createLinkedArray:(NSArray *)numbers {
    if (numbers == nil || numbers.count == 0) {
        return;
    }
    // 生成一个链表
    for (int i = 0; i < numbers.count; i++) {
        [self addObject:numbers[i]];
    }
}

@end
