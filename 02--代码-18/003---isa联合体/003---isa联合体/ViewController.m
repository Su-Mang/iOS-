//
//  ViewController.m
//  003---isa联合体
//
//  Created by cooci on 2019/1/23.
//  Copyright © 2019 cooci. All rights reserved.
//

#import "ViewController.h"
#import <objc/runtime.h>
#import "LGTank.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    LGTank *tank = [[LGTank alloc] init];
    [tank setBack:YES];
    [tank setFront:NO];
    NSLog(@"%d - %d",tank.isBack,tank.isFront);
    NSLog(@"%lu",class_getInstanceSize([tank class]));
}


@end
