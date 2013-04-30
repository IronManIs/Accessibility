//
//  MyTabBarController.m
//  Accessibility Compeer App 2
//
//  Created by Borrower on 4/30/13.
//  Copyright (c) 2013 Tyler Morton. All rights reserved.
//

#import "MyTabBarController.h"

@interface MyTabBarController ()

@end

@implementation MyTabBarController
@synthesize tabs;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    UINavigationController *nav = [[UINavigationController alloc] init];
    //UITabBarController *tabBarController = [[UITabBarController alloc] init];
    
    NSArray *listContent = [[NSArray alloc] initWithObjects:
                            @"Does",
                            @"This",
                            @"Work",
                            nil];
    
    MainViewController *myFirstViewController = [[MainViewController alloc] init];
    myFirstViewController.listContent = listContent;
    [myFirstViewController setTitle:@"Search"];
    myFirstViewController.tabBarItem.image = [UIImage imageNamed:@"Search-Icon2.png"];
    [nav.navigationController setNavigationBarHidden:YES animated:NO];
    nav = [[UINavigationController alloc] initWithRootViewController:myFirstViewController];
    [tabs addObject:nav];
    
    
    RootViewController *mySecondViewController = [[RootViewController alloc] init];
    [mySecondViewController setTitle:@"Review"];
    mySecondViewController.tabBarItem.image = [UIImage imageNamed:@"Nearby-Icon2.png"];
    //Needed to hide the navBar through transition
    if ([mySecondViewController.title isEqualToString:@"Review"])
    {   [nav.navigationController setNavigationBarHidden:YES animated:NO]; }
    nav = [[UINavigationController alloc] initWithRootViewController:mySecondViewController];
    [tabs addObject:nav];
    
    PreferencesViewController   *myThirdViewController = [[PreferencesViewController alloc] init];
    [myThirdViewController setTitle:@"Preferences"];
    myThirdViewController.tabBarItem.image = [UIImage imageNamed:@"Profile-Icon2.png"];
    //nav = [[UINavigationController alloc] initWithRootViewController:myThirdViewController];
    //tabBarController.tabBar.selectedImageTintColor = [UIColor whiteColor];
    [tabs addObject:myThirdViewController];
    NSLog(@"Here");
    
    //[tabBarController setViewControllers:tabs];
    
	// Do any additional setup after loading the view.
}
-(NSMutableArray *)returnTabs
{
    return tabs;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
