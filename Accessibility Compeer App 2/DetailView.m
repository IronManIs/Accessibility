//
//  DetailView.m
//  Accessibility Compeer App 2
//
//  Created by Tyler Morton on 4/13/13.
//  Copyright (c) 2013 Tyler Morton. All rights reserved.
//

#import "DetailView.h"

@interface DetailView ()

@end

@implementation DetailView
@synthesize theTitle;


- (void)viewDidLoad
{
    [super viewDidLoad];
    self.title = theTitle;
	// Do any additional setup after loading the view.
}
-(void)viewDidDisappear:(BOOL)animated
{
    [self.navigationController setToolbarHidden:YES animated:NO];
}

@end
