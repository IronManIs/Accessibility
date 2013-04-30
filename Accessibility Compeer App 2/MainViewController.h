#import <UIKit/UIKit.h>
#import "RootViewController.h"
#import "AppDelegate.h"

@interface MainViewController : UITableViewController <UISearchDisplayDelegate, UISearchBarDelegate>
{
    NSArray         *listContent;
    NSMutableArray *filteredListContent;
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