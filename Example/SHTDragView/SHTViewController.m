//
//  SHTViewController.m
//  SHTDragView
//
//  Created by shihuatao on 03/04/2019.
//  Copyright (c) 2019 shihuatao. All rights reserved.
//

#import "SHTViewController.h"
#import "DragView.h"

@interface SHTViewController ()

@end

@implementation SHTViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    DragView *dView = [[DragView alloc]initWithFrame:CGRectMake(100, 100, 100, 100)];
    dView.bgImage = [UIImage imageNamed:@"ball"];
    [self.view addSubview:dView];
    
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
