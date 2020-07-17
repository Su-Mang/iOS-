//
//  ViewController.m
//  002---内存管理
//
//  Created by cooci on 2019/1/19.
//  Copyright © 2019 cooci. All rights reserved.
//

#import "ViewController.h"
#import "LGPerson.h"
#import "LGStudent.h"
#import <objc/runtime.h>

@interface ViewController ()

@end

@implementation ViewController

- (void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    NSLog(@"%s",__func__);
}

- (void)viewDidAppear:(BOOL)animated{
    [super viewDidAppear:animated];
    NSLog(@"%s",__func__);

}
- (void)viewDidLoad {
    [super viewDidLoad];

    NSObject *obj = [[NSObject alloc] init];
    [obj copy];
    NSLog(@"hellow");
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    NSLog(@"1234");
}


@end
