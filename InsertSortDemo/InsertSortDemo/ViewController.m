//
//  ViewController.m
//  InsertSortDemo
//
//  Created by cs on 2019/3/25.
//  Copyright © 2019 cs. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    NSArray *array = @[@3,@2, @6, @9, @8, @5, @7, @1, @4];
    [self inserSort:[NSMutableArray arrayWithArray:array]];
}

/**
 插入排序
 
 @param array 需要排序的Array
 */
- (void)inserSort:(NSMutableArray *)array{
    // 插入排序的原理：始终定义第一个元素为有序的，将元素逐个插入到有序排列之中，其特点是要不断的
    
    // 移动数据，空出一个适当的位置，把待插入的元素放到里面去。
    for (int i = 0; i < array.count; i++) {
        
        NSNumber *temp = array[i];
        // temp 为待排元素 i为其位置 j为已排元素最后一个元素的位置（即取下一个元素，在已经排好序的元素序列中从后向前扫描）
        
        int j = i-1;
        
        // 当j < 0 时， i 为第一个元素 该元素认为已经是排好序的 所以不进入while循环
        while (j >= 0 && [array[j] intValue] > [temp intValue]) {
            //如果已经排好序的序列中元素大于新元素，则将该元素往右移动一个位置
            [array replaceObjectAtIndex:j+1 withObject:array[j]];
            j--;
        }
        // 跳出while循环时，j的元素小于或等于i的元素(待排元素)。插入新元素 a[j+1] = temp,即将空出来的位置插入待排序的值
        [array replaceObjectAtIndex:j+1 withObject:temp];
        NSLog(@"插入排序排序中:%@",[self getArrayStr:array]);
    }
}

- (NSString *)getArrayStr:(NSArray *)array {
    NSMutableString *strM = [NSMutableString string];
    for (NSNumber *num in array) {
        [strM appendString:[NSString stringWithFormat:@"%@,",num]];
    }
    return strM.copy;
}

@end
