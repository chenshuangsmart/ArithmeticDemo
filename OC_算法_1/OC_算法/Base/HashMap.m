//
//  HashMap.m
//  OC_算法
//
//  Created by cs on 2018/9/28.
//  Copyright © 2018年 cs. All rights reserved.
//

#import "HashMap.h"

@implementation HashMap {
    NSMutableDictionary *_hashDict;  // 保存数据
}

- (instancetype)init {
    self = [super init];
    if (self) {
        _hashDict = [NSMutableDictionary dictionary];
    }
    return self;
}

/**
 插入新值
 */
- (void)put:(int)val index:(int)index {
    NSString *key = [NSString stringWithFormat:@"%d",index];
    NSString *value = [NSString stringWithFormat:@"%d",val];
    [_hashDict setValue:value forKey:key];
}

/**
 根据值,返回其索引
 */
- (int)get:(int)value {
    NSArray *allKeys = [_hashDict allKeys];
    if (allKeys.count == 0) {
        return 0;
    }
    int index = 0;
    for (NSString *key in allKeys) {
        NSString *valueStr = [_hashDict valueForKey:key];
        if ([valueStr intValue] == value) {
            index = [key intValue];
            break;
        }
    }
    return index;
}

@end
