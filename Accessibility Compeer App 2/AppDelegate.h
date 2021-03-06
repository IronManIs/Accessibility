//
//  AppDelegate.h
//  Accessibility Compeer App 2
//
//  Created by Tyler Morton on 4/11/13.
//  Copyright (c) 2013 Tyler Morton. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "RootViewController.h"
#import "MainViewController.h"
#import "PreferencesViewController.h"
#import "MyTabBarController.h"

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) NSMutableArray *tabs;
@property (strong, nonatomic) UITabBarController *tabBarController;
@property (strong, nonatomic) UIWindow *window;

@end
