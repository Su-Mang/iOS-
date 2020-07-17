//
//  main.m
//  LGTest
//
//  Created by cooci on 2019/2/7.
//

#import <Foundation/Foundation.h>
#import "LGPerson.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        LGPerson *p = [LGPerson alloc]; // extrac = 0
        // alloc出来的引用计数为多少 -- 0 -- 1
        NSLog(@"%lu",(unsigned long)[p retainCount]); // 1
        [p retain]; // extrac = 0  -  1
        NSLog(@"%lu",(unsigned long)[p retainCount]); // extrac+1 = 2
        [p release];// -1
        NSLog(@"1 == %lu",(unsigned long)[p retainCount]); // 1
        [p release];// 1-1 -- 引用计数位0的时候 我就析构 ? -- 响应 消息
        NSLog(@" 0 == %lu",(unsigned long)[p retainCount]); // 0
        [p release];// -1
        NSLog(@"-1 == %lu",(unsigned long)[p retainCount]); // -1
        NSLog(@"完了");
     }
    return 0;
}
