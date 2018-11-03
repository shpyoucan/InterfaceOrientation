//
//  HPInterfaceOrientationManager.h
//  SDKTest
//
//  Created by shenhp on 2018/11/3.
//  Copyright © 2018 shenhp. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface HPInterfaceOrientationManager : NSObject

/**
 此方法于 push或者present横屏VC时提前调用
 */
+ (void)starWithVCLandscapeRight;

/**
 此方法于 该最后一个横屏VC 消失或者的dealloc时t调用
 */
+ (void)stopWithVCLandscapeRight;

@end

NS_ASSUME_NONNULL_END
