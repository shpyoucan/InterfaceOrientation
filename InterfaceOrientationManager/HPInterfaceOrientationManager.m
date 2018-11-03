//
//  HPInterfaceOrientationManager.m
//  SDKTest
//
//  Created by shenhp on 2018/11/3.
//  Copyright © 2018 shenhp. All rights reserved.
//

#import "HPInterfaceOrientationManager.h"
#import "AppDelegate+HPInterfaceOrientation.h"

@implementation HPInterfaceOrientationManager

+ (void)starWithVCLandscapeRight {
    
    AppDelegate *appdelegate = ((AppDelegate *)[UIApplication sharedApplication].delegate);
    appdelegate.allowRotate = YES;
    
    NSNumber *value = [NSNumber numberWithInt:UIDeviceOrientationLandscapeRight];
    [[UIDevice currentDevice]setValue:value forKey:@"orientation"];
}

+ (void)stopWithVCLandscapeRight {
    
    AppDelegate *appdelegate = ((AppDelegate *)[UIApplication sharedApplication].delegate);
    appdelegate.allowRotate = NO;
    
    NSNumber *value = [NSNumber numberWithInt:UIDeviceOrientationPortrait];
    [[UIDevice currentDevice]setValue:value forKey:@"orientation"];
}

@end
