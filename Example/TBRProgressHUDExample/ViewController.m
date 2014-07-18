//
//  ViewController.m
//  TBRProgressHUDExample
//
//  Created by Luciano Marisi on 17/07/2014.
//  Copyright (c) 2014 TechBrewers LTD. All rights reserved.
//

#import "ViewController.h"
#import "TBRProgressHUD.h"

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    TBRProgressHUD *progressHUD = [[TBRProgressHUD alloc] initWithView:self.view];
    progressHUD.text = @"Loading...";
    [self.view addSubview:progressHUD];
}


@end
