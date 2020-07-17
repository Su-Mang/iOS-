//
//  LGTank.m
//  003---isa联合体
//
//  Created by cooci on 2019/1/23.
//  Copyright © 2019 cooci. All rights reserved.
//

#import "LGTank.h"

#define LGDirectionFrontMask (1 << 0)
#define LGDirectionBackMask (1 << 1)

@interface LGTank(){
    // 联合体
    union {
        char bits;
        // 位域
        struct {
            char front : 1;
            char back :  1;
            char left :  1;
            char right : 1;
        };
        
    } _direction;
}

@end

@implementation LGTank

- (instancetype)init
{
    self = [super init];
    if (self) {
        _direction.bits = 0b00000000;
    }
    return self;
}

- (void)setFront:(BOOL)isFront {
    if (isFront) {
        _direction.bits |= LGDirectionFrontMask;
    } else {
        _direction.bits |= ~LGDirectionFrontMask;
    }
}

- (BOOL)isFront{
    return _direction.bits;
}

- (void)setBack:(BOOL)isBack {
    _direction.back = isBack;
}

- (BOOL)isBack{
    return _direction.back;
}


@end
