//
//  ViewController.m
//  OC_算法
//
//  Created by cs on 2018/8/29.
//  Copyright © 2018年 cs. All rights reserved.
//

#import "ViewController.h"
#import "03-repeatNumber.h"
#import "TwoDimensionalArrayFind_04.h"
#import "ReplaceBlank_05.h"
#import "PrintListFromTailToHead_06.h"
#import "ReConstructBinaryTree_07.h"
#import "BinaryTreeNode.h"
#import "TwoStackQueue.h"
#import "Fibonacci.h"
#import "MinNumberInRotateArray.h"
#import "MatrixHasPath.h"
#import "MovingCount_13.h"
#import "NumberOfOne_15.h"
#import "power_16.h"
#import "DeleteNode_18.h"
#import "NSArray+Extension.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    // 3.数组中重复的数字
//    [self repeatNumber];
    
    // 4.二维数组中的查找
//    [self twoDimensionArrayFind];
    
    // 5.替换空格
//    [self replaceSpace];
    
    // 6.从头到尾打印链表
//    [self printListFromTailToHead];
    
    // 7.重建二叉树
//    [self reConstructBinaryTree];
    
    // 9.用两个栈实现队列
//    [self twoStackToQueue];
    
    // 10.1 斐波那契数列
//    [self fibonacci];
    
    // 10.2 跳台阶
//    [self jumpFloor];
    
    // 10.3 变态跳台阶
//    [self jumpFloorII];
    
    // 10.4 矩形覆盖
    [self rectCover];
    
    // 11 折半查询
//    [self minNumberInRotateArray];
    
    // 12.矩阵中的路径
//    [self matrixHasPath];
    
    // 13.机器人的运动范围
//    [self movingCount];

    // 15.二进制中 1 的个数
//    [self numberOfOne];
    
    // 16.数值的整数次方
//    [self power];
    
    // 18.1 在 O(1) 时间内删除链表节点
//    [self deleteNode];
    
    // 18.2 删除链表中重复的结点
//    [self deleteDuplication];
}

//- (void)handleSwipeFrom:(UISwipeGestureRecognizer *)recognizer{
//    if(recognizer.direction == UISwipeGestureRecognizerDirectionDown) {
//        NSLog(@"swipe down");
//    }
//    if(recognizer.direction == UISwipeGestureRecognizerDirectionUp) {
//        NSLog(@"swipe up");
//    }
//    if(recognizer.direction == UISwipeGestureRecognizerDirectionLeft) {
//        NSLog(@"swipe left");
//    }
//    if(recognizer.direction == UISwipeGestureRecognizerDirectionRight) {
//        NSLog(@"swipe right");
//    }
//}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
//    [self matrixHasPath];
}

// 3.数组中重复的数字
- (void)repeatNumber {
    NSMutableArray *arrM = [NSMutableArray array];
    for (int i = 0; i < 10; i++) {
        NSMutableArray *numbers = [NSMutableArray array];
        for (int j = 0; j < 10; j++) {
            [numbers addObject:[NSNumber numberWithInt:arc4random_uniform(10)]];
        }
        [arrM addObject:numbers];
    }
    
    for (int i = 0; i < arrM.count; i++) {
        NSArray *numbers = [arrM objectAtIndex:i];
        NSArray *repeatNumbers = [_3_repeatNumber duplicate:numbers];
        NSLog(@"i = %d, 原始数组:%@, 重复数字:%@",i,[numbers getAllObjectsDescription],[repeatNumbers getAllObjectsDescription]);
    }
}

// 4.二维数组中的查找
- (void)twoDimensionArrayFind {
    NSArray *targets = @[@16,@6,@30,@20,@15];
    for (int i = 0; i < targets.count; i++) {
        bool isFind = [TwoDimensionalArrayFind_04 findNumber: [targets vFI:i] numbers:nil];
        if (!isFind) {
            NSLog(@"target = %d, noFind",[targets vFI:i]);
        }
    }
}

// 5.替换空格
- (void)replaceSpace {
    NSString *str = @"We Are Happy";
    NSLog(@"oldStr = %@",str);
    NSString *newStr = [ReplaceBlank_05 replaceSpace:str];
    NSLog(@"newStr = %@",newStr);
}

// 6.从头到尾打印链表
- (void)printListFromTailToHead {
    // 1.使用栈
//    NSArray *arr = [PrintListFromTailToHead_06 printListFromTailToHeadByShed:@[@1,@2,@3]];
//    NSLog(@"arr = %@",arr);
    
    // 2.使用递归
//    NSArray *arr = [PrintListFromTailToHead_06 printListFromTailToHeadByRecursion:@[@1,@2,@3]];
//    NSLog(@"arr = %@",arr);
    
    // 3.使用头表插入法
//    NSArray *arr = [PrintListFromTailToHead_06 printListFromTailToHeadByInsert:@[@1,@2,@3]];
//    NSLog(@"arr = %@",arr);
    
    // 4.使用reverse 反序
    NSArray *arr = [PrintListFromTailToHead_06 printListFromTailToHeadByReverse:@[@1,@2,@3]];
    NSLog(@"arr = %@",arr);
}

// 7.重建二叉树
- (void)reConstructBinaryTree {
    NSArray *preorders = @[@3,@9,@20,@15,@7];
    NSArray *inorders = @[@9,@3,@15,@20,@7];
    BinaryTreeNode *treeNode = [ReConstructBinaryTree_07 reConstructBinaryTree:preorders inorders:inorders];
    NSLog(@"treeNode = %@",treeNode);
}

// 9.用两个栈实现队列
- (void)twoStackToQueue {
    NSArray *numbers = @[@1,@2,@3,@4];
    NSNumber *lastNumber = [TwoStackQueue twoStackToQueue:numbers];
    NSLog(@"lastNumber = %@",lastNumber);
}

// 10.1 斐波那契数列
- (void)fibonacci {
    for (int i = 0; i < 20; i++) {
        NSLog(@"i = %d, total = %d",i,[Fibonacci Fibonacci:i]);
    }
}

// 10.2 跳台阶
- (void)jumpFloor {
    for (int i = 0; i < 10; i++) {
        NSLog(@"i = %d, total = %d",i,[Fibonacci jumpFloor:i]);
    }
}

// 10.3 变态跳台阶
- (void)jumpFloorII {
    for (int i = 0; i < 10; i++) {
        NSLog(@"i = %d, total = %d",i,[Fibonacci jumpFloor2:i]);
    }
}

// 10.4 矩形覆盖
- (void)rectCover {
    for (int i = 0; i < 10; i++) {
        NSLog(@"i = %d, total = %d",i,[Fibonacci rectCover:i]);
    }
}

// 11 折半查询
- (void)minNumberInRotateArray {
    int number = [MinNumberInRotateArray minNumberInRotateArray:@[@3,@4,@2,@1,@3]];
    NSLog(@"number = %d",number);
}

// 12.矩阵中的路径
- (void)matrixHasPath {
    MatrixHasPath *hasPath = [[MatrixHasPath alloc] init];
    bool result = [hasPath hasPath:@"abtgcfcsjdeh" rows:3 cols:4 str:@"bfceh"];
    NSLog(@"result = %d",result);
}

// 13.机器人的运动范围
- (void)movingCount {
    MovingCount_13 *movingCount = [[MovingCount_13 alloc] init];
    int count = [movingCount movintCount:18 rows:10 cols:10];
    NSLog(@"count = %d",count);
}

// 15.二进制中 1 的个数
- (void)numberOfOne {
    int count = [NumberOfOne_15 numberOfOne:10];
    NSLog(@"count = %d",count);
}

// 16.数值的整数次方
- (void)power {
    double value = [power_16 power:2 exponent:5];
    NSLog(@"value = %f",value);
}

// 18.在 O(1) 时间内删除链表节点
- (void)deleteNode {
    DeleteNode_18 *deleteNode = [[DeleteNode_18 alloc] init];
    [deleteNode deleteNode];
}

// 18.2 删除链表中重复的结点
- (void)deleteDuplication {
    DeleteNode_18 *deleteNode = [[DeleteNode_18 alloc] init];
    [deleteNode deleteDuplicationNode];
}

@end
