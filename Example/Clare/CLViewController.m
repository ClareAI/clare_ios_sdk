//
//  CLViewController.m
//  Clare
//
//  Created by zekail on 05/04/2018.
//  Copyright (c) 2018 zekail. All rights reserved.
//

#import "CLViewController.h"
#import <Clare/Clare.h>

@interface CLViewController ()

@end

@implementation CLViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}
-(void)viewDidAppear:(BOOL)animated{
    [super viewDidAppear:animated];
    [[Clare sharedManager]show];
}
- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
