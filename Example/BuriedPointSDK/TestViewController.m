//
//  TestViewController.m
//  BuriedPointSDK_Example
//
//  Created by 晓凯 on 2020/8/3.
//  Copyright © 2020 kaige1123. All rights reserved.
//

#import "TestViewController.h"

@interface TestViewController ()

@end

@implementation TestViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = UIColor.grayColor;
    
    UIControl *myControl = [[UIControl alloc] initWithFrame:CGRectMake(0, 100, 300, 200)];
    myControl.backgroundColor =UIColor.orangeColor;
    myControl.tag = 2000;
    [myControl addTarget:self action:@selector(myControlAction) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:myControl];
    
    UILabel *lab = [[UILabel alloc] initWithFrame:CGRectMake(20, 20, 200, 60)];
    lab.backgroundColor = UIColor.greenColor;
    lab.tag = 2001;
    lab.text = @"my is label";
    [myControl addSubview:lab];
}

- (void)myControlAction {
    NSLog(@"myControlAction");
}

@end
