//
//  ViewController.m
//  004-自动释放池和runloop的关系
//
//  Created by cooci on 2019/4/9.
//  Copyright © 2019 cooci. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    /**
     observers = (
     "<CFRunLoopObserver 0x600001238280 [0x10b19ab68]>{valid = Yes, activities = 0x1, repeats = Yes, order = -2147483647, callout = _wrapRunLoopWithAutoreleasePoolHandler (0x10dd891b1), context = <CFArray 0x600002d3c1b0 [0x10b19ab68]>{type = mutable-small, count = 0, values = ()}}",
     "<CFRunLoopObserver 0x60000123c500 [0x10b19ab68]>{valid = Yes, activities = 0x20, repeats = Yes, order = 0, callout = _UIGestureRecognizerUpdateObserver (0x10d95b473), context = <CFRunLoopObserver context 0x60000083cfc0>}",
     "<CFRunLoopObserver 0x600001238140 [0x10b19ab68]>{valid = Yes, activities = 0xa0, repeats = Yes, order = 1999000, callout = _beforeCACommitHandler (0x10ddb8dfc), context = <CFRunLoopObserver context 0x7fdae6d020c0>}",
     "<CFRunLoopObserver 0x6000012381e0 [0x10b19ab68]>{valid = Yes, activities = 0xa0, repeats = Yes, order = 2001000, callout = _afterCACommitHandler (0x10ddb8e75), context = <CFRunLoopObserver context 0x7fdae6d020c0>}",
     "<CFRunLoopObserver 0x600001238320 [0x10b19ab68]>{valid = Yes, activities = 0xa0, repeats = Yes, order = 2147483647, callout = _wrapRunLoopWithAutoreleasePoolHandler (0x10dd891b1), context = <CFArray 0x600002d3c1b0 [0x10b19ab68]>{type = mutable-small, count = 0, values = ()}}"
     ),

     */
    
    NSLog(@"hello word");
}


@end
