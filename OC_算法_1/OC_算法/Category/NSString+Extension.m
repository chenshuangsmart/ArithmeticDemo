//
//  NSString+Extension.m
//  OC_算法
//
//  Created by cs on 2018/10/27.
//  Copyright © 2018 cs. All rights reserved.
//

#import "NSString+Extension.h"

@implementation NSString (Extension)

/** 十进制数转二进制数 */
- (NSString *)convertBinarySystemFromDecimalSystem {
    NSInteger num = [self intValue];
    NSInteger remainder = 0;      //余数
    NSInteger divisor = 0;        //除数
    
    NSString * prepare = @"";
    
    while (true){
        remainder = num % 2;
        divisor = num / 2;
        num = divisor;
        prepare = [prepare stringByAppendingFormat:@"%ld",remainder];
        
        if (divisor == 0){
            break;
        }
    }
    
    NSString * result = @"";
    
    for (NSInteger i = prepare.length - 1; i >= 0; i --){
        result = [result stringByAppendingFormat:@"%@",[prepare substringWithRange:NSMakeRange(i , 1)]];
    }
    
    // 补齐8位显示
    while (result.length < 8) {
        result = [NSString stringWithFormat:@"0%@",result];
    }
    
    return result;
}


@end
