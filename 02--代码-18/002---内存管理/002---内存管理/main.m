//
//  main.m
//  002---内存管理
//
//  Created by cooci on 2019/1/19.
//  Copyright © 2019 cooci. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AppDelegate.h"

int main(int argc, char * argv[]) {
    @autoreleasepool {
        [@"hello" copy];
        return UIApplicationMain(argc, argv, nil, NSStringFromClass([AppDelegate class]));
    }
}
