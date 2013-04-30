//
//  RootViewController.m
//  Accessibility Compeer App 2
//
//  Created by Tyler Morton on 4/11/13.
//  Copyright (c) 2013 Tyler Morton. All rights reserved.
//

#import "RootViewController.h"
#import "DetailView.h"

@implementation RootViewController
@synthesize tableView, theArray;
@synthesize nav;

- (void)viewDidLoad
{ 
    [super viewDidLoad];
    
    nav = self.navigationController;
    [nav setNavigationBarHidden:YES animated:NO];
    //Creates array as soon as loads
    
    tableView = [[UITableView alloc] initWithFrame:CGRectMake(0, 0, 320, 460) style:UITableViewStylePlain];
    tableView.delegate = self;
    tableView.dataSource = self;
    [self.view addSubview:tableView];
    
    theArray = [NSArray arrayWithObjects:@"Business ONE", @"Business TWO", @"Business THREE",@"Business FOUR", nil];
    
                                                    
}

- (NSInteger) numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger) tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return [theArray count];
}

//Customize the appearance of table view cells.
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"Cell";
    
    UITableViewCell *cell = [self.tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:CellIdentifier];
    }
    
    cell.textLabel.text = [theArray objectAtIndex:indexPath.row];
    cell.detailTextLabel.text = @"Variable ft";
    cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;

    
    return cell;
}

-(void) tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    

    AppDelegate *ad = (AppDelegate *)[[UIApplication sharedApplication] delegate];
    ad.tabs;
    DetailView *newView = [[DetailView alloc] init];
    //self.nav.`
    newView.theTitle = [self.tableView cellForRowAtIndexPath:indexPath].textLabel.text;
    [nav pushViewController:newView animated:YES];
    NSLog(@"Root");

    
    //NSLog(@"You pressed : %@", [NSString stringWithFormat:[self.tableView cellForRowAtIndexPath:indexPath].textLabel.text]  );
}

- (void) viewDidDisappear:(BOOL)animated
{
    [self.navigationController setNavigationBarHidden:NO animated:NO];
}

- (void) viewWillAppear:(BOOL)animated
{     if ([self.title isEqual: @"Review"])
    {[self.navigationController setNavigationBarHidden:YES animated:NO];}
   // if ([self.title isEqual: content]) {}
  //      <#statements#>
    //{}
   
}

@end
