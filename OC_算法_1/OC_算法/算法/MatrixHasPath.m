//
//  MatrixHasPath.m
//  OC_算法
//
//  Created by cs on 2018/10/17.
//  Copyright © 2018 cs. All rights reserved.
//

#import "MatrixHasPath.h"

/**
 请设计一个函数，用来判断在一个矩阵中是否存在一条包含某字符串所有字符的路径。路径可以从矩阵中的任意一个格子开始，每一步可以在矩阵中向左，向右，向上，向下移动一个格子。如果一条路径经过了矩阵中的某一个格子，则该路径不能再进入该格子。
 例如下面的矩阵包含了一条 bfce 路径。
 a  b   t   g
 c  f   c   s
 j  d   e   h
 */

@implementation MatrixHasPath {
    NSArray *_next;
    int _rows;
    int _cols;
}

- (instancetype)init {
    self = [super init];
    if (self) {
        // 上 下 左 右 四个方向
        _next = @[@[@0,@(-1)],@[@0,@1],@[@(-1),@0],@[@1,@0]];
    }
    return self;
}

- (BOOL)hasPath:(NSString *)oriStr rows:(int)rows cols:(int)cols str:(NSString *)str {
    if (rows == 0 || cols == 0) {
        return NO;
    }
    _rows = rows;
    _cols = cols;
    
    // 1.先构造一个二维数组,数值都填充为0,表示没有遍历过
    NSMutableArray *marked = [NSMutableArray array];
    for (int i = 0; i < _rows; i++) {
        NSMutableArray *firstArrM = [NSMutableArray array];
        for (int j = 0; j < _cols; j++) {
            [firstArrM addObject:@0];
        }
        [marked addObject:firstArrM];
    }
    
    // 2.构造一个矩阵 array-完整路径的数组,即a,b,t,g,c...h,并且是一个 rows * cols 的矩阵
    NSMutableArray *oriStrs = [NSMutableArray array];
    for (int i = 0; i < oriStr.length; i++) {
        [oriStrs addObject:[oriStr substringWithRange:NSMakeRange(i, 1)]];
    }
    NSMutableArray *matrix = [self buildMatrix:oriStrs.copy];
    
    // 一条完整路径的数组
    NSMutableArray *strs = [NSMutableArray array];
    for (int i = 0; i < str.length; i++) {
        [strs addObject:[str substringWithRange:NSMakeRange(i, 1)]];
    }
    
    for (int i = 0; i < rows; i++) {
        for (int j = 0; j < cols; j++) {
            if ([self backetracking:matrix strs:strs marked:marked pathLen:0 r:i c:j]) {
                return YES;
            }
        }
    }
    
    return NO;
}

- (bool)backetracking:(NSArray *)matrix strs:(NSArray *)strs marked:(NSArray *)marked pathLen:(int)pathLen r:(int)r c:(int)c {
    // 0.即路径长度和字符串长度相等
    if (pathLen == strs.count) {
        NSLog(@"路径:\n%@",[marked getAllObjectsDescription]);
        return YES;
    }
//    r < 0 || r >= _rows || c < 0 || c >= _cols || ![oriPathStr isEqualToString:tarPathStr] || marked[r][c]
    if (r < 0 || r >= _rows || c < 0 || c >= _cols || matrix[r][c] != strs[pathLen] || [marked[r][c] intValue]) {
        // 原路径
        return NO;
    }
    marked[r][c] = @1;
    for (NSArray *next in _next) {
        int next0 = [(NSNumber *)(next[0]) intValue];
        int next1 = [(NSNumber *)(next[1]) intValue];
        if ([self backetracking:matrix strs:strs marked:marked pathLen:pathLen + 1 r:(r + next0) c:(c + next1)]) {
            return YES;
        }
    }
    marked[r][c] = @0;
    return NO;
}

/**
 构造一个矩阵 array-完整路径的数组,即a,b,t,g,c...h,并且是一个 rows * cols 的矩阵
 a  b   t   g
 c  f   c   s
 j  d   e   h
 */
- (NSMutableArray *)buildMatrix:(NSArray *)array {
    // 0.判断是否有值
    if (_rows == 0 || _cols == 0) {
        return nil;
    }
    if (array.count < _rows * _cols) {
        return nil;
    }
    
    // 1.先构造一个二维数组
    NSMutableArray *secondArrM = [NSMutableArray array];
    for (int i = 0; i < _rows; i++) {
        NSMutableArray *firstArrM = [NSMutableArray array];
        for (int j = 0; j < _cols; j++) {
            [firstArrM addObject:@""];
        }
        [secondArrM addObject:firstArrM];
    }
    
    // 2.依次将值填充进数组中
    int idx = 0;
    for (int i = 0; i < _rows; i++) {
        for (int j = 0; j < _cols; j++) {
            secondArrM[i][j] = array[idx++];
        }
    }
    
    return secondArrM;
}
@end
