//
//  ViewController.m
//  Get them out
//
//  Created by Martin Bartusek on 09.03.13.
//  Copyright (c) 2013 Martin Bartusek. All rights reserved.
//

#import "CenterController.h"
#import "IIViewDeckController.h"

@interface CenterController ()

@end

@implementation CenterController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.navigationController.navigationBar.tintColor = [UIColor colorWithRed:21.0f/256.0f green:33.0f/256.0f blue:51.0f/256.0f alpha:1];
    self.navigationController.navigationBar.topItem.title = NSLocalizedString(@"Get them out", nil);

}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
