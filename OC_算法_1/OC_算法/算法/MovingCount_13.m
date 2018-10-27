//
//  MovingCount_13.m
//  OC_算法
//
//  Created by cs on 2018/10/22.
//  Copyright © 2018 cs. All rights reserved.
//

#import "MovingCount_13.h"

/**
 题目描述:
  地上有一个 m 行和 n 列的方格。一个机器人从坐标 (0, 0) 的格子开始移动，每一次只能向左右上下四个方向移动一格，但是不能进入行坐标和列坐标的数位之和大于 k 的格子。
 例如，当 k 为 18 时，机器人能够进入方格 (35,37)，因为 3+5+3+7=18。但是，它不能进入方格 (35,37)，因为 3+5+3+8=19。请问该机器人能够达到多少个格子？
 */
@implementation MovingCount_13 {
    NSArray *_next;
    int _count;
    int _rows;
    int _cols;
    int _threshold; // 行坐标和列坐标的数位之和小于等于于_threshold
    NSMutableArray *_digitSum;
}

- (instancetype)init {
    self = [super init];
    if (self) {
        _next = @[@[@0,@(-1)],@[@0,@1],@[@(-1),@0],@[@1,@0]];
    }
    return self;
}

- (int)movintCount:(int)threshold rows:(int)rows cols:(int)cols {
    _rows = rows;
    _cols = cols;
    _threshold = threshold;
    [self initDigitSum];
    
    NSMutableArray *marked = [NSMutableArray array];
    for (int i = 0; i < _rows; i++) {
        NSMutableArray *firstArrM = [NSMutableArray array];
        for (int j = 0; j < _cols; j++) {
            [firstArrM addObject:@0];
        }
        [marked addObject:firstArrM];
    }
    [self dfs:marked r:0 c:0];
    return _count;
}

- (void)dfs:(NSMutableArray *)marked r:(int)r c:(int)c {
    if (r < 0 || r >= _rows || c < 0 || c >= _cols || [marked[r][c] intValue]) {
        return;
    }
    marked[r][c] = @1;
    if ([_digitSum[r][c] intValue] > _threshold) {
        return;
    }
    _count++;
    for (NSArray *next in _next) {
        int next0 = [(NSNumber *)(next[0]) intValue];
        int next1 = [(NSNumber *)(next[1]) intValue];
        [self dfs:marked r:r + next0 c:c + next1];
    }
}

- (void)initDigitSum {
    int maxNumber = MAX(_rows, _cols);
    NSMutableArray *numbers = [NSMutableArray array];
    for (int i = 0; i < maxNumber; i++) {
        [numbers addObject:@0];
    }
    
    for (int i = 0; i < numbers.count; i++) {
        int n = i;
        while (n > 0) {
            numbers[i] = @([numbers[i] intValue] + n % 10);
            n /= 10;
        }
    }
    
    // 初始化原始数组
    if (_digitSum == nil) {
        _digitSum = [NSMutableArray array];
        for (int i = 0; i < _rows; i++) {
            NSMutableArray *firstArrM = [NSMutableArray array];
            for (int j = 0; j < _cols; j++) {
                [firstArrM addObject:@0];
            }
            [_digitSum addObject:firstArrM];
        }
    }
    
    // 赋值
    for (int i = 0; i < _rows; i++) {
        for (int j = 0; j < _cols; j++) {
            _digitSum[i][j] = @([numbers[i] intValue] + [numbers[j] intValue]);
        }
    }
}

@end
