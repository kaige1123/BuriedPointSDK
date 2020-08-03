//
//  BURIEDPOINTViewController.m
//  BuriedPointSDK
//
//  Created by kaige1123 on 08/02/2020.
//  Copyright (c) 2020 kaige1123. All rights reserved.
//

#import "BURIEDPOINTViewController.h"
#import <BuriedPointSDK/NSString+HashCode.h>
#import "TestViewController.h"

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
    btn.tag = 1000;
    [btn setTitle:@"点击按钮" forState:UIControlStateNormal];
    [btn addTarget:self action:@selector(buttonAction:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn];
    
    UIButton *btn1 = [UIButton buttonWithType:UIButtonTypeCustom];
    btn1.backgroundColor = UIColor.redColor;
    btn1.frame = CGRectMake(50, 400, 200, 60);
    btn1.tag = 1001;
    [btn1 setTitle:@"下一页" forState:UIControlStateNormal];
    [btn1 addTarget:self action:@selector(buttonAction:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn1];
}

- (void)buttonAction:(UIButton *)sender {
    NSLog(@"buttonAction");
    if (sender.tag == 1000) {
        
    } else if (sender.tag == 1001) {
        TestViewController *testVC = [[TestViewController alloc] init];
        [self presentViewController:testVC animated:YES completion:nil];
    }
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
