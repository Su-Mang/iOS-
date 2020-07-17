//
//  main.m
//  002-weak探索
//
//  Created by cooci on 2019/4/9.
//  Copyright © 2019 cooci. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        
        NSObject *obj1 = [[NSObject alloc] init];
        id __weak obj2 = obj1;
        
        NSLog(@"Hello, World!");
    }
    return 0;
}
