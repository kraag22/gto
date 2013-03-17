//
//  LeftViewController.h
//  Get them out
//
//  Created by Martin Bartusek on 17.03.13.
//  Copyright (c) 2013 Martin Bartusek. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface LeftViewController : UIViewController<UITableViewDataSource, UITableViewDelegate>
@property (weak, nonatomic) IBOutlet UILabel *percentUsageLabel;

@end
