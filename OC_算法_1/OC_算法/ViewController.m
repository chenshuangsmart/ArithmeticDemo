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
#import "reOrderArray_21.h"
#import "FindKthToTail_22.h"
#import "EntryNodeOfLoop_23.h"
#import "ReverseList_24.h"
#import "LinkedArray.h"
#import "MergeTwoListNode_25.h"
#import "MirrorTree_27.h"
#import "IsSymmetrical_28.h"
#import "PrintMatrixClockwise_29.h"
#import "PrintMatrixClockwise_29.h"
#import "VerifySquenceOfBST_33.h"
#import "Serializer_37.h"
#import "MoreThanHalfNumSolution_39.h"

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
//    [self rectCover];
    
    // 11.1 折半查询
//    [self minNumberInRotateArray];
    
    // 11.2 折半查询
//    [self minNumberInRotateArray2];
    
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
    
    // 21.调整数组顺序使奇数位于偶数前面
//    [self reOrderArray];
    
    // 22.链表中倒数第 K 个结点
//    [self findKthToTail];
    
    // 23.链表中环的入口结点
//    [self entryNodeOfLoop];
    
    // 24 反转链表
//    [self reverseList];
    
    // 25 合并两个排序的链表
//    [self MergeTwoListNode];
    
    // 27.二叉树的镜像
//    [self mirror];
    
    // 28.对称的二叉树
//    [self isSymmetrical];
    
    // 29.顺时针打印矩阵
//    [self printMatrixClockwise];
    
    // 33.二叉搜索树的后序遍历序列
//    [self verifySquenceOfBST];
    
    // 37.序列号二叉树
//    [self serializerBinaryTree];
    
    // 39.数组中出现次数超过一半的数字
    [self moreThanHalfNum];
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

// 11.1 折半查询
- (void)minNumberInRotateArray {
    int number = [MinNumberInRotateArray minNumberInRotateArray:@[@1,@4,@8,@11,@20]];
    NSLog(@"number = %d",number);
}

// 11.2 折半查询
- (void)minNumberInRotateArray2 {
    int number = [MinNumberInRotateArray minNumberInRotateArray2:@[@3,@4,@2,@1,@3]];
    NSLog(@"number = %d",number);
}

// 12.矩阵中的路径
- (void)matrixHasPath {
    MatrixHasPath *hasPath = [[MatrixHasPath alloc] init];
    NSString *pathStr = @"abtgcfcsjdeh";
    
    NSMutableArray *tagPaths = [NSMutableArray array];
    [tagPaths addObject:@"bfce"];
    [tagPaths addObject:@"bfceh"];
    [tagPaths addObject:@"acfde"];
    [tagPaths addObject:@"bcjd"];
    [tagPaths addObject:@"abfceh"];
    [tagPaths addObject:@"abtch"];
    [tagPaths addObject:@"abtsh"];
    
    for (int i = 0; i < tagPaths.count; i++) {
        NSString *tagPath = [tagPaths objectAtIndex:i];
        bool result = [hasPath hasPath:pathStr rows:3 cols:4 str:tagPath];
        NSLog(@"i = %d, path = %@, result = %d",i,tagPath, result);
        NSLog(@"----------------------------------------");
    }
}

// 13.机器人的运动范围
- (void)movingCount {
    MovingCount_13 *movingCount = [[MovingCount_13 alloc] init];
    int count = [movingCount movintCount:18 rows:10 cols:10];
    NSLog(@"count = %d",count);
}

// 15.二进制中 1 的个数
- (void)numberOfOne {
    for (int i = 0; i < 20; i++) {
        NSLog(@"i = %d, decimal = %@, count = %d",i,[[NSString stringWithFormat:@"%d",i] convertBinarySystemFromDecimalSystem],[NumberOfOne_15 numberOfOne:i]);
    }
}

// 16.数值的整数次方
- (void)power {
    for (int i = 0; i < 10; i++) {
        NSLog(@"base = 2, exponent = %d, result = %f",i,[power_16 power:2 exponent:i]);
    }
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

// 21.调整数组顺序使奇数位于偶数前面
- (void)reOrderArray {
    NSMutableArray *tempArrM = [NSMutableArray array];
    for (int i = 0; i < 20; i++) {
        int number = arc4random_uniform(10);
        [tempArrM addObject:[NSNumber numberWithInt:number]];
    }
    NSLog(@"原始数组:%@",[tempArrM getAllObjectsDescription]);
    NSArray *arr = [reOrderArray_21 reOrderArray:tempArrM.copy];
    NSLog(@"原始数组:%@",[arr getAllObjectsDescription]);
}

// 22.链表中倒数第 K 个结点
- (void)findKthToTail {
    NSMutableArray *numbers = [NSMutableArray array];
    for (int i = 0; i < 10; i++) {
        [numbers addObject:[NSNumber numberWithInt:i]];
    }
    ListNode *listNode = [FindKthToTail_22 findKthToTail:numbers.copy index:6];
    [listNode printAllListNode];
}

// 23.链表中环的入口结点
- (void)entryNodeOfLoop {
    ListNode *entryNode = [EntryNodeOfLoop_23 entryNodeOfLoop];
    NSLog(@"entryNode content = %d",entryNode.value);
}

// 24 反转链表
- (void)reverseList {
    NSMutableArray *arrM = [NSMutableArray array];
    for (int i = 0; i < 10; i++) {
        [arrM addObject:[NSNumber numberWithInt:i]];
    }
    LinkedArray *listArr = [[LinkedArray alloc] initLiknedArrayWithNunbers:arrM.copy];
    NSLog(@"-------------之前链表--------------");
    [listArr printAllListNode];
    ListNode *newHead = [ReverseList_24 reverseList:arrM.copy];
    NSLog(@"-------------反转链表--------------");
    [newHead printAllListNode];
}

// 25 合并两个排序的链表
- (void)MergeTwoListNode {
    NSArray *array1 = @[@1,@3,@5];
    NSArray *array2 = @[@2,@4,@6];
    
    ListNode *listNode1 = [MergeTwoListNode_25 mergeByRecursionWith:array1 numbers2:array2];
    [listNode1 printAllListNode];
     NSLog(@"-------------分割线--------------");
    ListNode *listNode2 = [MergeTwoListNode_25 mergeByIterationWith:array1 numbers2:array2];
    [listNode2 printAllListNode];
}

// 27.二叉树的镜像
- (void)mirror {
    [MirrorTree_27 mirror];
}

// 28.对称的二叉树
- (void)isSymmetrical {
    bool isSymetrical = [IsSymmetrical_28 isSymmetrical];
    NSLog(@"isSymetrical = %d",isSymetrical);
}

// 29.顺时针打印矩阵
- (void)printMatrixClockwise {
    NSMutableArray *numbers = [NSMutableArray array];
    for (int i = 1; i < 21; i++) {
        [numbers addObject:@(i)];
    }
    NSArray *result = [PrintMatrixClockwise_29 printMatrix:numbers];
    NSString *resultStr = [result getAllObjectsDescription];
    NSLog(@"resultStr = %@",resultStr);
}

// 33.二叉搜索树的后序遍历序列
- (void)verifySquenceOfBST {
    NSArray *numbers = @[@1,@2,@3];
    bool result = [VerifySquenceOfBST_33 verifySquenceOfBST:numbers];
    NSLog(@"result = %d",result);
}

// 37.序列号二叉树
- (void)serializerBinaryTree {
    NSString *str = [Serializer_37 serialize];
    NSLog(@"result = %@",str);
    
    // 反序列化
    TreeNode *node = [Serializer_37 deserialize:str];
    NSLog(@"node = %@",node);
}

// 39.数组中出现次数超过一半的数字
- (void)moreThanHalfNum {
    NSMutableArray *numM = [NSMutableArray array];
    for (int i = 0; i < 20; i++) {
        [numM addObject:[NSNumber numberWithInt:arc4random_uniform(2)]];
    }
    int number = [MoreThanHalfNumSolution_39 MoreThanHalfNum_Solution:numM];
    NSLog(@"number = %d",number);
}

@end
