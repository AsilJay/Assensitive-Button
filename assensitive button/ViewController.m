//
//  ViewController.m
//  assensitive button
//
//  Created by myjawdrops on 16/6/24.
//  Copyright © 2016年 MyJawDrops. All rights reserved.
//

#import "ViewController.h"
#import "MJDSensiveButton.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    MJDSensiveButton *btn = [[MJDSensiveButton alloc] initWithFrame:CGRectMake(50, 50, 50, 50)];
    [btn setBackgroundImage:[UIImage imageNamed:@"AssistiveTouch"] forState:(UIControlStateNormal)];
    [self.view addSubview:btn];
//    btn.edgeInsets = UIEdgeInsetsMake(50, 50, 50, 50);
    
    
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
