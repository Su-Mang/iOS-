//
//  Person.m
//  003-自动释放池
//
//  Created by Sumang on 2020/7/15.
//  Copyright © 2020 cooci. All rights reserved.
//

#import "Person.h"

@implementation Person
- (void)dealloc
{
    NSLog(@"%s",__func__);
}
@end
