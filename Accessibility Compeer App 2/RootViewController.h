//
//  RootViewController.h
//  Accessibility Compeer App 2
//
//  Created by Tyler Morton on 4/11/13.
//  Copyright (c) 2013 Tyler Morton. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AppDelegate.h"
@interface RootViewController : UIViewController <UITableViewDataSource, UITableViewDelegate>
{
    UINavigationController *nav;
}
@property (nonatomic, strong) UINavigationController *nav;
@property (nonatomic, strong) UITableView *tableView;
@property (nonatomic, strong) NSArray *theArray;

@end
