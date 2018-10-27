//
//  MatrixHasPath.h
//  OC_算法
//
//  Created by cs on 2018/10/17.
//  Copyright © 2018 cs. All rights reserved.
//

#import <Foundation/Foundation.h>

/**
 矩阵中的路径
 */
@interface MatrixHasPath : NSObject

- (BOOL)hasPath:(NSString *)oriStr rows:(int)rows cols:(int)cols str:(NSString *)str;

@end
