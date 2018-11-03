//
//  AppDelegate+HPInterfaceOrientation.m
//  SDKTest
//
//  Created by shenhp on 2018/11/3.
//  Copyright © 2018 shenhp. All rights reserved.
//

#import "AppDelegate+HPInterfaceOrientation.h"
#import <objc/runtime.h>

static const char * interfaceOrientationKey = "HPInterfaceOrientationKey";

@implementation AppDelegate (HPInterfaceOrientation)

- (UIInterfaceOrientationMask)application:(UIApplication *)application supportedInterfaceOrientationsForWindow:(UIWindow *)window
{
    if (self.allowRotate) {
        return UIInterfaceOrientationMaskLandscapeRight;
    }
    return UIInterfaceOrientationMaskPortrait;
}

- (void)setAllowRotate:(BOOL)allowRotate {
    objc_setAssociatedObject(self, interfaceOrientationKey, @(allowRotate), OBJC_ASSOCIATION_ASSIGN);
    
}

- (BOOL)allowRotate {
    return [objc_getAssociatedObject(self, interfaceOrientationKey) boolValue];
}

@end
