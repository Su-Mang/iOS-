//
//  LGTank.h
//  003---isa联合体
//
//  Created by cooci on 2019/1/23.
//  Copyright © 2019 cooci. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface LGTank : NSObject
- (void)setFront:(BOOL)isFront;
- (BOOL)isFront;

- (void)setBack:(BOOL)isBack;
- (BOOL)isBack;

@end

NS_ASSUME_NONNULL_END
