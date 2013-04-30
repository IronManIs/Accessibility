//
//  MainViewController.m
//  Testbar
//
//  Created by Borrower on 4/22/13.
//  Copyright (c) 2013 Borrower. All rights reserved.
//

#import "MainViewController.h"
@interface MainViewController ()

@end

@implementation MainViewController
@synthesize listContent, filteredListContent, savedSearchTerm, savedScopeButtonIndex, searchWasActive;

- (id)initWithStyle:(UITableViewStyle)style
{
    self = [super initWithStyle:style];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    [self.tableView registerClass:[UITableViewCell class] forCellReuseIdentifier:@"Cell"];
    
    UISearchBar *searchBar = [[UISearchBar alloc] init];
    UISearchDisplayController *searchController = [[UISearchDisplayController alloc] init];
    searchController = [[UISearchDisplayController alloc] initWithSearchBar:searchBar contentsController:self];
    self.searchDisplayController.searchResultsDataSource = self;
    self.searchDisplayController.searchResultsDelegate = self;
    searchBar.frame = CGRectMake(0, 0, 0, 38);
    self.tableView.tableHeaderView = searchBar;
    searchBar.showsCancelButton = YES;
    searchBar.delegate = self;
    self.filteredListContent = [NSMutableArray arrayWithCapacity:[self.listContent count]];
}
-(void)searchBar:(UISearchBar *)searchBar textDidChange:(NSString *)searchText
{
    [self.filteredListContent removeAllObjects];
    NSString *content;
    NSIndexPath *myIndexPath;
    for (content in listContent)
    {
        NSComparisonResult result = [content compare:searchText options:(NSCaseInsensitiveSearch|NSDiacriticInsensitiveSearch) range:NSMakeRange(0, [searchText length])];
        if (result == NSOrderedSame)
        {
            [self.filteredListContent addObject:content];
            
        }
        [self.tableView cellForRowAtIndexPath:(myIndexPath)];
        
    }
    //self.searchDisplayController.searchResultsTableView;
    [self.tableView reloadData];
    
    
    
}
-(void)searchBarSearchButtonClicked:(UISearchBar *)searchBar
{       NSLog(@"Search CLICKED");
    
    
}

- (void)searchBarCancelButtonClicked:(UISearchBar *)searchBar
{
    NSLog(@"CANCEL CLICKED");
    [searchBar resignFirstResponder];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    // Return the number of rows in the section.
    if (self.filteredListContent.count != 0)
        
        // if (tableView == self.searchDisplayController.searchResultsTableView)
	{
        return [self.filteredListContent count];
    }
	else
	{
        return [self.listContent count];
    }
    
    return 0;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"Cell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier forIndexPath:indexPath];
    if (cell == nil){
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:CellIdentifier];
    }
    
    NSString *content;
    // NSLog(@"Bool value: %@", self.searchDisplayController.searchResultsTableView);
    //NSLog(@"Filtered value: %@", self.filteredListContent);
    
    if (self.filteredListContent.count != 0)
	{
        content = [self.filteredListContent objectAtIndex:indexPath.row];
    }
	else
	{
        content = [self.listContent objectAtIndex:indexPath.row];
    }
    
    cell.textLabel.text = content;
    cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
    
    return cell;
    
}


#pragma mark - Table view delegate

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    RootViewController *newView = [[RootViewController alloc] init];
    
    
    NSString *content;
    
    //if (tableView == self.searchDisplayController.searchResultsTableView)
    if (self.filteredListContent.count != 0)
	{
        content = [self.filteredListContent objectAtIndex:indexPath.row];
    }
	else
	{
        content = [self.listContent objectAtIndex:indexPath.row];
    }
    newView.title = content;
    //self.navigationController
    //[];
    
    AppDelegate *ad = (AppDelegate *)[[UIApplication sharedApplication] delegate];
    ad.tabs;
    [ad.tabBarController setSelectedIndex:1];
    //ad.tabBarController
    //[self.navigationController setNavigationBarHidden:YES animated:NO];
    //[self.navigationController pushViewController:newView animated:NO];
    NSLog(@"Main");
    //[self pushViewController:newView];
    
    //[self.navigationController pushViewController:newView animated:YES];
    
    /*
     ; *detailViewController = [[; alloc] initWithNibName:@"" bundle:nil];
     // ...
     // Pass the selected object to the new view controller.
     [self.navigationController pushViewController:detailViewController animated:YES];
     */
}
#pragma mark -
#pragma mark Content Filtering

- (void)filterContentForSearchText:(NSString*)searchText scope:(NSString*)scope
{
	/*
	 Update the filtered array based on the search text and scope. nope text and only text
	 */
	
	//[self.filteredListContent removeAllObjects]; // First clear the filtered array.
    
    /*
     
     NSComparisonResult result = [listContent compare:searchText options:(NSCaseInsensitiveSearch|NSDiacriticInsensitiveSearch) range:NSMakeRange(0, [searchText length])];
     if (result == NSOrderedSame)
     {
     [self.filteredListContent addObject:product];
     }
     */
    
    
}

#pragma mark -
#pragma mark UISearchDisplayController Delegate Methods
- (BOOL)searchDisplayController:(UISearchDisplayController *)controller shouldReloadTableForSearchString:(NSString *)searchString
{
    [self filterContentForSearchText:searchString scope:
     [[self.searchDisplayController.searchBar scopeButtonTitles] objectAtIndex:[self.searchDisplayController.searchBar selectedScopeButtonIndex]]];
    NSLog(@"string");
    
    // Return YES to cause the search result table view to be reloaded.
    return YES;
}

//scope will be gone
- (BOOL)searchDisplayController:(UISearchDisplayController *)controller shouldReloadTableForSearchScope:(NSInteger)searchOption
{
    [self filterContentForSearchText:[self.searchDisplayController.searchBar text] scope:
     [[self.searchDisplayController.searchBar scopeButtonTitles] objectAtIndex:searchOption]];
    NSLog(@"scope");
    
    // Return YES to cause the search result table view to be reloaded.
    return YES;
}
- (void) viewDidDisappear:(BOOL)animated
{
    [self.navigationController setNavigationBarHidden:YES animated:NO];
}

- (void) viewWillAppear:(BOOL)animated
{
    {[self.navigationController setNavigationBarHidden:YES animated:NO];}
    
}
@end