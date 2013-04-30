//
//  MyTabBarController.h
//  Accessibility Compeer App 2
//
//  Created by Borrower on 4/30/13.
//  Copyright (c) 2013 Tyler Morton. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "RootViewController.h"
#import "MainViewController.h"
#import "PreferencesViewController.h"
#import "AppDelegate.h"

@interface MyTabBarController : UITabBarController
@property (strong, nonatomic) NSMutableArray *tabs;
@end
