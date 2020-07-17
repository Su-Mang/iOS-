//
//  main.m
//  003-自动释放池
//
//  Created by cooci on 2019/4/9.
//  Copyright © 2019 cooci. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"

//struct LGTest {
//
//    LGTest(){
//        printf("1123 - %s",__func__);
//    }
//
//    ~LGTest(){
//        printf("5667 - %s",__func__);
//    }
//
//};

// __AtAutoreleasePool __autoreleasepool;
// objc_autoreleasePoolPush --> atautoreleasepoolobj
// objc_autoreleasePoolPop

/**
 自动释放池 : 容纳变量 - 释放
 1:大量的临时变量
 2:非UI操作, 命令行
 3:自己创建辅助线程
 
 AutoreleasePoolPage::push();

 page:属性 56个字节
 一页所能容乃的大小: 4096
 // 505 满
 // 38 = 3*16+8 = 48+8 = 56
 // 16进制 8
 // 0x103803038 边界 -- 加进去 压栈 -- 剪出来  出栈 - 页面销毁
 自动释放池 - 双向链表
 这一页是不是满 --
 
 4096 - 属性 56 push 压栈 + 边界符 - 开辟新的页面 压栈
 pop
 
 */
extern void _objc_autoreleasePoolPrint(void);

int main(int argc, const char * argv[]) {
    
   //  Person   * prson = [[Person alloc] init];
   // @autoreleasepool
    {
//      Person  __strong * prson = [[Person alloc] init];
//
//        Person __weak * p = prson;
//        id temp = p;
//        NSLog(@"%@", temp);
        id __strong  obj = [[NSObject alloc ] init];
         _objc_autoreleasePoolPrint();
        id __weak o = obj;
        _objc_autoreleasePoolPrint();
        //[prson dealloc];
        
       // [prson release];
    }
    
   // _objc_autoreleasePoolPrint();
    return 0;
}

