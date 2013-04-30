//
//  SearchResults.h
//  Accessibility Compeer App 2
//
//  Created by Borrower on 4/15/13.
//  Copyright (c) 2013 Tyler Morton. All rights reserved.
//
/*
#import <UIKit/UIKit.h>

@interface SearchResults : UITableViewController

@end
*/
@interface SearchResults : UITableViewController <UISearchDisplayDelegate, UISearchBarDelegate>
{
	NSArray			*listContent;			// The master content.
	NSMutableArray	*filteredListContent;	// The content filtered as a result of a search.
	
	// The saved state of the search UI if a memory warning removed the view.
    NSString		*savedSearchTerm;
    NSInteger		savedScopeButtonIndex;
    BOOL			searchWasActive;
}

@property (nonatomic, retain) NSArray *listContent;
@property (nonatomic, retain) NSMutableArray *filteredListContent;

@property (nonatomic, copy) NSString *savedSearchTerm;
@property (nonatomic) NSInteger savedScopeButtonIndex;
@property (nonatomic) BOOL searchWasActive;

@end