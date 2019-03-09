//
//  VerifySquenceOfBST_33.m
//  OC_算法
//
//  Created by cs on 2018/11/13.
//  Copyright © 2018 cs. All rights reserved.
//

#import "VerifySquenceOfBST_33.h"

@implementation VerifySquenceOfBST_33

+ (bool)verifySquenceOfBST:(NSArray *)sequence {
    if (sequence == nil || sequence.count == 0) {
        return NO;
    }
    return [self verify:sequence first:0 last:sequence.count - 1];
}

+ (bool)verify:(NSArray *)sequence first:(NSUInteger)first last:(NSUInteger)last {
    if (last - first <= 1) {
        return YES;
    }
    int rootValue = [sequence vFI:last];
    int cutIndex = (int)first;
    while (cutIndex < last && [sequence vFI:cutIndex] <= rootValue) {
        cutIndex++;
    }
    for (int i = cutIndex; i < last; i++) {
        if ([sequence vFI:i] < rootValue) {
            return NO;
        }
    }
    return [self verify:sequence first:first last:cutIndex - 1] && [self verify:sequence first:cutIndex last:last - 1];
}

@end
