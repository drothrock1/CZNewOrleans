//
//  recipeOneViewController.m
//  CocktailZenNewOrleans
//
//  Created by Brad on 6/28/10.
//  Copyright 2010 __Rothrock Group, LLC__. All rights reserved.
//

#import "recipeOneViewController.h"
#import "RecipePhotoViewController.h"

#define TEXT_BGCOLORVAL_RED				250
#define TEXT_BGCOLORVAL_GREEN			250
#define TEXT_BGCOLORVAL_BLUE			250

@implementation recipeOneViewController


- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
	if (!(self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil]))
        return nil;
    
    self.title = NSLocalizedString(@"Vieux Carre", @"");
	
	return self;
}


- (void)viewDidLoad
{
	NSLog (@"viewdidload");
	[scrollView setScrollEnabled:YES];
	[scrollView setContentSize:CGSizeMake(320, 475)];
	[scrollView setBackgroundColor:[UIColor colorWithRed:TEXT_BGCOLORVAL_RED/255.0 green:TEXT_BGCOLORVAL_GREEN/255.0 blue:TEXT_BGCOLORVAL_BLUE/255.0 alpha:1]];

	UIBarButtonItem *backButton = [[UIBarButtonItem alloc] initWithTitle:@"Recipe" style:UIBarButtonItemStylePlain target:nil action:nil];
	self.navigationItem.backBarButtonItem = backButton;
	[backButton release];
	

}

#pragma mark 
#pragma mark - Large Photo Control Methods

- (IBAction)photoTapped:(id)sender {
	
	NSLog(@"phototapped");
	NSString *title = [sender titleForState:UIControlStateNormal];
	NSLog(@"This is theimage name for title: %@", title);
	
    RecipePhotoViewController *recipePhotoViewController = [[RecipePhotoViewController alloc] init];
	recipePhotoViewController.photoName = title;
	[self.navigationController pushViewController:recipePhotoViewController animated:YES];
	[recipePhotoViewController release];
}


- (void)didReceiveMemoryWarning {
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc that aren't in use.
}

- (void)viewDidUnload {
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}


- (void)dealloc {
    [super dealloc];
}


@end
