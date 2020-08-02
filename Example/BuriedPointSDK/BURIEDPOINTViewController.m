//
//  BURIEDPOINTViewController.m
//  BuriedPointSDK
//
//  Created by kaige1123 on 08/02/2020.
//  Copyright (c) 2020 kaige1123. All rights reserved.
//

#import "BURIEDPOINTViewController.h"
#import <BuriedPointSDK/NSString+HashCode.h>

@interface BURIEDPOINTViewController ()

@end

@implementation BURIEDPOINTViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	    NSString *str = @"sensorsdata_hashCode";
    NSLog(@"------sensorsdata_hashCode:%d------",[str sensorsdata_hashCode]);
    
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
    btn.backgroundColor = UIColor.redColor;
    btn.frame = CGRectMake(0, 100, 200, 60);
    [btn addTarget:self action:@selector(buttonAction) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn];
}

- (void)buttonAction
{
    NSLog(@"buttonAction");
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
