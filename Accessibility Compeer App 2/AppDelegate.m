//
//  AppDelegate.m
//  Accessibility Compeer App 2
//
//  Created by Tyler Morton on 4/11/13.
//  Copyright (c) 2013 Tyler Morton. All rights reserved.
//

#import "AppDelegate.h"

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{ 
    
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    UINavigationController *nav;
    self.tabBarController = [[UITabBarController alloc] init];
    
    self.tabs = [[NSMutableArray alloc] init];
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
    [self.tabs addObject:nav];
    
    
    RootViewController *mySecondViewController = [[RootViewController alloc] init];
    [mySecondViewController setTitle:@"Review"];
    mySecondViewController.tabBarItem.image = [UIImage imageNamed:@"Nearby-Icon2.png"];
    //Needed to hide the navBar through transition    
    if ([mySecondViewController.title isEqualToString:@"Review"])
    {   [nav.navigationController setNavigationBarHidden:YES animated:NO]; }
    nav = [[UINavigationController alloc] initWithRootViewController:mySecondViewController];
    [self.tabs addObject:nav];
         
    PreferencesViewController   *myThirdViewController = [[PreferencesViewController alloc] init];
    [myThirdViewController setTitle:@"Preferences"];
    myThirdViewController.tabBarItem.image = [UIImage imageNamed:@"Profile-Icon2.png"];
    self.tabBarController.tabBar.selectedImageTintColor = [UIColor whiteColor];
    [self.tabs addObject:myThirdViewController];
    
    
    [self.tabBarController setViewControllers:self.tabs];
    [self.window makeKeyAndVisible];
    [self.window setRootViewController:self.tabBarController];
    return YES;
    

}
/*
static id gGlobalInstanceTabBar = nil;
+ (UITabBarController *) tabBarController
{
    if (!gGlobalInstanceTabBar)
    {
        gGlobalInstanceTabBar = [[UITabBarController alloc] init];
    }
    return gGlobalInstanceTabBar;
}*/

- (void)applicationWillResignActive:(UIApplication *)application
{
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later. 
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application
{
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
