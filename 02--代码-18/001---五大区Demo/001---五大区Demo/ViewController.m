//
//  ViewController.m
//  001---五大区Demo
//
//  Created by cooci on 2019/1/15.
//  Copyright © 2019 cooci. All rights reserved.
//

#import "ViewController.h"
#import "LGPerson.h"

@interface ViewController ()

@end

@implementation ViewController

int clA;
int clB = 10;

static int bssA;
static NSString *bssStr1;

static int bssB = 10;
static NSString *bssStr2 = @"cooci";

- (void)viewDidLoad {
    [super viewDidLoad];
    int a ;
    
    
    // 0x1 常量 静态
   // int a = 10;
    NSLog(@"%p",&a); // 栈 -- 0x7 栈
    NSObject *obj = [NSObject new]; // 对象 --
    NSLog(@"%@ - %p",obj,&obj); // 0x6 堆
    NSArray *array = [[NSArray alloc] init];
    NSLog(@"%@-%p",array,&array);
//    2020-07-15 19:48:45.311519+0800 001---五大区Demo[1731:92902] 0x7ffee67474cc
//    2020-07-15 19:48:45.311628+0800 001---五大区Demo[1731:92902] <NSObject: 0x600003684200> - 0x7ffee67474c0
//    2020-07-15 19:48:45.311696+0800 001---五大区Demo[1731:92902] (
//    )-0x7ffee67474b8
    
    
    
    
    
    
    
    
    
    
    // 对象过程 -- 你是如何找到这个对象的数组
    // 指针 (栈)-- 堆区内存空间 -- 读取到值
    // while 10000 { int b  = 20 }
    // 尽量封装方法 函数 --
    // 回收 gc -
    // class 编译
    // 函数 -- 变量增多 -- 嵌套方法 -- 用空间换时间
    // 自动释放池 : 双向链表
    
    // 常量 静态
   
}


@end
