//
//  AppDelegate.h
//  Get them out
//
//  Created by Martin Bartusek on 09.03.13.
//  Copyright (c) 2013 Martin Bartusek. All rights reserved.
//

#import <UIKit/UIKit.h>

@class CenterController;

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

@property (strong, nonatomic) UIViewController *centerController;
@property (strong, nonatomic) UIViewController *leftController;
@property (strong, nonatomic) UIViewController *rightController;

@end
