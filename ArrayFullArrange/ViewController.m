//
//  ViewController.m
//  ArrayFullArrange
//
//  Created by cs on 2019/3/30.
//  Copyright © 2019 cs. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

static int sum = 0; // 全排列个数

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    NSMutableArray *arrM = [NSMutableArray arrayWithObjects:@1,@2,@2, nil];
    [self permutation:arrM prefixIndex:0 number:(int)arrM.count];
}

// 递归实现数组全排列
// prefixIndex - 表示前缀的位置
// number - 要排列的数目
- (void)permutation:(NSMutableArray *)arrayM prefixIndex:(int)prefixIndex number:(int)number {
    if (prefixIndex == number - 1) { // 前缀是最后一个位置,此时打印排列数
        // 打印数组结果
        sum += 1;
        [self print:arrayM len:number index:sum];
    } else {
        for (int i = prefixIndex; i < number; i++) {
            if ([self isSwap:arrayM len:number index:i]) {
                // 交换前缀,使之产生下一个前缀. - i 递增,所以可以保证数组中的每一个元素都位于第0个,作为前缀的起始字符
                [self swap:arrayM i:prefixIndex j:i];
                
                // 以递归的方式对剩下的元素进行全排列
                [self permutation:arrayM prefixIndex:prefixIndex + 1 number:number];
                
                // 将前缀换回来,继续做上一个的前缀排列.
                [self swap:arrayM i:prefixIndex j:i];
            }
        }
    }
}

// 实现两数交换
- (void)swap:(NSMutableArray *)arrM i:(NSUInteger)i j:(NSUInteger)j {
    NSNumber *temp = arrM[i];
    arrM[i] = arrM[j];
    arrM[j] = temp;
}

// 打印数组内容
- (void)print:(NSMutableArray *)arrM len:(NSUInteger)len index:(int)index {
    NSMutableString *strM = [NSMutableString string];
    for (NSUInteger i = 0; i < len; i++) {
        [strM appendString:[NSString stringWithFormat:@"%@ ",arrM[i]]];
    }
    NSLog(@"index:[%d] %@",index,strM);
}

// 是否交换
- (bool)isSwap:(NSMutableArray *)arrM len:(int)len index:(int)index {
    for (int i = index + 1; i < len; i++) {
        if ([arrM[index] intValue] == [arrM[i] intValue]) {
            return NO;
        }
    }
    return YES;
}

- (void)printArrM:(NSMutableArray *)arrM {
    NSMutableString *strM = [NSMutableString string];
    for (int i = 0; i < arrM.count; i++) {
        [strM appendString:[NSString stringWithFormat:@"%@ ",arrM[i]]];
    }
    NSLog(@"%@",strM);
}

@end
