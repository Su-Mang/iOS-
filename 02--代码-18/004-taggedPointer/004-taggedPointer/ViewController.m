//
//  ViewController.m
//  004-taggedPointer
//
//  Created by cooci on 2019/4/8.
//  Copyright © 2019 cooci. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (nonatomic, strong) dispatch_queue_t  queue;
@property (nonatomic, strong) NSString *nameStr;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
   
    
    // Do any additional setup after loading the view, typically from a nib.
    // nsnumber  2^31 =
    // 1字节 = 8位
    // 4*8 = 32  -- 浪费
    // taggedpointer
    // ~ 按位取反  100001 - 011110
    // <<  10000111000
    // >>  10000111 -- 10000
    // ^ 异或 操作 --- 两个相同 0 不同位1
    // 翻转  1000 0011 ^ 0000 1100 = 1000  1111
    // 交换
    // a = 1010 0001
    // b = 0000 1100
    // a = a^b   // a = 1010 1101  -- 1010 1101
    // b = a^b   // b = 0000 1100  -- 1010 0001
    // a = a^b   // 0000 1100
    // b = a^b^b
    // a 异或 两次 b = 原来
    // taggedpointer --- 直接返回 -- imp
    // 值 -
    
   // NSNumber *num1 = @(100);//  0x00011e22 ^ mask --
   // NSNumber *num2 = @(200);//  0x00011e22 ^mask^mask
  //  NSLog(@"%@-%p,%@-%p",num1,&num1,num2,&num2);
    // 栈地址 -- 更新
    // 没有特殊标识 -- 让我一眼就知道
    
    self.queue = dispatch_queue_create("MY_queue", DISPATCH_QUEUE_CONCURRENT);
    
    for (int i = 0; i<100000; i++) {
        dispatch_async(self.queue, ^{
            self.nameStr = [NSString stringWithFormat:@"123dsf dsfjksdfnjksnfkjsd"];
        });
    }
    
    
    
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    
    // 不断 retian release
    // 异步并发
    // 一直在retian
    // 一直在release -1 0
    NSLog(@"来了");
    for (int i = 0; i<100000; i++) {
        dispatch_async(self.queue, ^{
            self.nameStr = [NSString stringWithFormat:@"dsggkdaasdasdshjksda"];
        });
    }
    
}

// 1:编码的
// 2:解码
// 3: 存储小对象
// 4: 不再是一个简单的地址 值 类型 长度
// 5: 读取速度特别快 3倍  创建106倍
// 栈 - 对 - 值
// 


@end
