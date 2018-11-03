
//
//  ThreeVController.m
//  SDKTest
//
//  Created by shenhp on 2018/11/1.
//  Copyright © 2018 shenhp. All rights reserved.
//

#import "ThreeVController.h"

@interface ThreeVController ()

@end

@implementation ThreeVController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
    btn.frame = CGRectMake(100, 100, 100, 100);
    [btn setTitle:@"返回" forState:UIControlStateNormal];
    [btn addTarget:self action:@selector(clickAction:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn];
}

- (void)clickAction:(UIButton *)sender {
    
//    [self dismissViewControllerAnimated:YES completion:nil];
}

@end
