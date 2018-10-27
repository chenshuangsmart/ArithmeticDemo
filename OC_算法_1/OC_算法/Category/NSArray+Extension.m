//
//  NSArray+Extension.m
//  OC_算法
//
//  Created by cs on 2018/10/27.
//  Copyright © 2018 cs. All rights reserved.
//

#import "NSArray+Extension.h"

@implementation NSArray (Extension)

/** 打印所有对象 */
- (NSString *)getAllObjectsDescription {
    if (self.count == 0) {
        return nil;
    }
    NSMutableString *strM = [NSMutableString string];
    for (int i = 0; i < self.count; i++) {
        if ([self[i] isKindOfClass:[NSNumber class]]) {
            NSNumber *number = (NSNumber *)self[i];
            [strM appendString:[NSString stringWithFormat:@"%d ",number.intValue]];
        } else if ([self[i] isKindOfClass:[NSArray class]]) {
            [strM appendString:[NSString stringWithFormat:@"%@ \n",[self[i] getAllObjectsDescription]]];
        }
    }
    return strM;
}

/** 获取第 i 个位置的值 */
- (int)vFI:(NSUInteger)i {
    if (i >= self.count) {
        return 0;
    }
    if (![[self objectAtIndex:i] isKindOfClass:[NSNumber class]]) {
        return 0;
    }
    
    return [[self objectAtIndex:i] intValue];
}

/** 获取第 i行 j 列 位置的值 */
- (int)vFI:(NSUInteger)i j:(NSUInteger)j {
    if (i >= self.count) {
        return 0;
    }
    if (![[self objectAtIndex:i] isKindOfClass:[NSArray class]]) {
        return 0;
    }
    NSArray *numbers = [self objectAtIndex:i];
    if (j >= numbers.count) {
        return 0;
    }
    if (![[numbers objectAtIndex:j] isKindOfClass:[NSNumber class]]) {
        return 0;
    }
    
    return [[numbers objectAtIndex:j] intValue];
}

@end
