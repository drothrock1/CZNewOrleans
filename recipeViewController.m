    //
//  recipeViewController.m
//  CocktailZenNewOrleans
//
//  Created by Brad on 6/18/10.
//  Copyright 2010 __Rothrock Group, LLC__. All rights reserved.
//

#import "recipeViewController.h"

#import "recipeOneViewController.h"
#import "recipeTwoViewController.h"
#import "recipeThreeViewController.h"
#import "recipeFourViewController.h"
#import "recipeFiveViewController.h"
#import "recipeSixViewController.h"
#import "recipeSevenViewController.h"
#import "recipeEightViewController.h"
#import "recipeNineViewController.h"
#import "recipeTenViewController.h"
#import "recipeElevenViewController.h"
#import "recipeTwelveViewController.h"
#import "recipeThirteenViewController.h"

#define kNameLabelTag		1
#define kAddressLabelTag	2
#define kImageLabelTag		3

@implementation recipeViewController


@synthesize listData;
@synthesize recipeTableView;

- (void)viewDidLoad {
	[super viewDidLoad];
    NSArray *ver = [[UIDevice currentDevice].systemVersion componentsSeparatedByString:@"."];
    if ([[ver objectAtIndex:0] intValue] >= 7) {
        self.navigationController.navigationBar.barTintColor = [UIColor blackColor];
        self.navigationController.navigationBar.translucent = NO;
        self.navigationController.navigationBar.titleTextAttributes = @{NSForegroundColorAttributeName : [UIColor whiteColor]};
        self.navigationController.navigationBar.tintColor = [UIColor whiteColor];
    }

	
	NSDictionary *row1 = [[NSDictionary alloc] initWithObjectsAndKeys:@"Vieux Carre", @"Name", @"Carousel Bar and Lounge",@"Address",@"recipetable1",@"Image", nil];
	NSDictionary *row2 = [[NSDictionary alloc] initWithObjectsAndKeys:@"The Goody", @"Name", @"Carousel Bar and Lounge",@"Address",@"recipetable2",@"Image",  nil];	
	NSDictionary *row3 = [[NSDictionary alloc] initWithObjectsAndKeys:@"Ramos Gin Fizz", @"Name", @"Sazerac Bar",@"Address",@"recipetable3",@"Image",  nil];
	NSDictionary *row4 = [[NSDictionary alloc] initWithObjectsAndKeys:@"French 75", @"Name", @"Arnaud's French 75",@"Address",@"recipetable4",@"Image",  nil];	
	NSDictionary *row5 = [[NSDictionary alloc] initWithObjectsAndKeys:@"Pimm's No. 1 Cup", @"Name", @"Napolean House",@"Address",@"recipetable5",@"Image",  nil];	
	NSDictionary *row6 = [[NSDictionary alloc] initWithObjectsAndKeys:@"Sazerac", @"Name", @"Muriel's",@"Address",@"recipetable6",@"Image",  nil];	
	NSDictionary *row7 = [[NSDictionary alloc] initWithObjectsAndKeys:@"Absinthe Frappe", @"Name", @"Pirate's Alley Cafe",@"Address",@"recipetable7",@"Image",  nil];	
	NSDictionary *row8 = [[NSDictionary alloc] initWithObjectsAndKeys:@"Mint Julep", @"Name", @"Maison Bourbon",@"Address",@"recipetable8",@"Image",  nil];
    NSDictionary *row9 = [[NSDictionary alloc] initWithObjectsAndKeys:@"Old Fashioned", @"Name", @"Hermes",@"Address",@"recipetable9",@"Image",  nil];
    NSDictionary *row10 = [[NSDictionary alloc] initWithObjectsAndKeys:@"St. Charles Streetcar", @"Name", @"Luke",@"Address",@"recipetable10",@"Image",  nil];
    NSDictionary *row11 = [[NSDictionary alloc] initWithObjectsAndKeys:@"Moscow Mule", @"Name", @"21st Amendment",@"Address",@"recipetable11",@"Image",  nil];
    NSDictionary *row12 = [[NSDictionary alloc] initWithObjectsAndKeys:@"Negroni", @"Name", @"SoBou",@"Address",@"recipetable12",@"Image",  nil];
    NSDictionary *row13 = [[NSDictionary alloc] initWithObjectsAndKeys:@"La Louisiane", @"Name", @"Kingfish",@"Address",@"recipetable13",@"Image",  nil];
	
	NSArray *array = [[NSArray alloc] initWithObjects:row1, row2, row3, row4, row5, row6, row7, row8, row9, row10, row11, row12, row13, nil];
	self.listData = array;
	
	[row1 release];
	[row2 release];
	[row3 release];
	[row4 release];
	[row5 release];
	[row6 release];
	[row7 release];
	[row8 release];
    [row9 release];
    [row10 release];
    [row11 release];
    [row12 release];
    [row13 release];
	[array release];
	
	
	/*
	 recipeTableView = [[ATableViewController alloc] initWithStyle:UITableViewStylePlain];
	 recipeTableViewController.view.backgroundColor = [UIColor clearColor];
	 [window addSubview:yourTableViewController.view];
	 */
	
	
	
	/*
	 self.navigationController.view.backgroundColor = [UIColor colorWithPatternImage:[UIImage imageNamed:@"Background2-1.png"]];
	 self.tableView.backgroundColor = [UIColor clearColor];
	 */
	
	/*
	 CGRect myImageRect = CGRectMake(0.0f, 0.0f, 320.0f, 420.0f);
	 UIImageView *myImage = [[UIImageView alloc] initWithFrame:myImageRect];
	 [myImage setImage:[UIImage imageNamed:@"Background2-1.png"]];
	 myImage.opaque = YES; // explicitly opaque for performance
	 [self.view addSubview:myImage];
	 [myImage release];
	 */
	
}

-(void)viewWillAppear:(BOOL)animated
{
	
	[self.recipeTableView deselectRowAtIndexPath:self.recipeTableView.indexPathForSelectedRow animated:NO];
	
	
	NSLog (@"tableview viewwillappear executed");
	[super viewWillAppear:animated];
	
}

- (void)didReceiveMemoryWarning {
	// Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
	// Release any cached data, images, etc that aren't in use.
}

- (void)viewDidUnload {
	// Release any retained subviews of the main view.
	// e.g. self.myOutlet = nil;
	self.listData = nil;
	self.recipeTableView = nil;
	[super viewDidUnload];
}


#pragma mark Table view methods

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}


// Customize the number of rows in the table view.
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return [self.listData count];
}


// Customize the appearance of table view cells.
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    static NSString *CellTableIdentifier = @"CellTableIdentifier";
	[tableView setBounces:YES];
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellTableIdentifier];
    if (cell == nil) {
        cell = [[[UITableViewCell alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:CellTableIdentifier] autorelease];
		cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
    //  }  THIS CLOSE BRACKET IS WHAT IS CAUSES PICTURE TO OVERWRITE AND TURN DARK, IT NEEDS TO BE AFTER THE FRAMES!!!!!
	
	
	//Black frame around the picture
	CGRect frame = CGRectMake(1, 1, 41, 41);
	UIView *imageFrame = [[UIView alloc] initWithFrame:frame];
	[imageFrame setBackgroundColor:[UIColor blackColor]];
	[imageFrame setOpaque:NO];
	[imageFrame setAlpha:0.5];
	[cell.contentView addSubview:imageFrame];
	[imageFrame release];
	
	//Container for picture
	CGRect imageLabelRect = CGRectMake(2, 2, 39, 39);
	UIImageView *imageLabel = [[UIImageView alloc] initWithFrame:imageLabelRect];
	imageLabel.contentMode = UIViewContentModeScaleAspectFit;
	imageLabel.tag = kImageLabelTag;
	[cell.contentView addSubview:imageLabel];
	[imageLabel release];
	
	//Title text
	CGRect nameLabelRect = CGRectMake(50, 6, 240, 18);
	UILabel *nameLabel = [[UILabel alloc] initWithFrame:nameLabelRect];
	[nameLabel setBackgroundColor:[UIColor clearColor]];
	nameLabel.textAlignment = NSTextAlignmentLeft;
	nameLabel.tag = kNameLabelTag;
	nameLabel.font = [UIFont boldSystemFontOfSize:16];
	[cell.contentView addSubview:nameLabel];
	[nameLabel release];
	
	//Subtitle text
	CGRect addressLabelRect = CGRectMake(50, 25, 240, 16);
	UILabel *addressLabel = [[UILabel alloc] initWithFrame:addressLabelRect];
	[addressLabel setBackgroundColor:[UIColor clearColor]];
	addressLabel.textAlignment = NSTextAlignmentLeft;
	addressLabel.tag = kAddressLabelTag;
	addressLabel.font = [UIFont systemFontOfSize:12];
	[cell.contentView addSubview:addressLabel];
	[addressLabel release];

//  HERE IS WHERE THE CLOSE BRACKET SHOULD BE!!!!!
    }
        
	
	NSUInteger row = [indexPath row];
	NSDictionary *rowData = [self.listData objectAtIndex:row];
	
	NSString *imageName= [rowData objectForKey:@"Image"];
	UIImage *imagePath = [UIImage imageNamed:[NSString stringWithFormat:@"%@.png", imageName]];
	
	NSLog(@"This is theimage name for the photoveiw: %@", imagePath);
	
	UIImageView *imageThumb = (UIImageView *)[cell.contentView viewWithTag:kImageLabelTag];
	imageThumb.image = imagePath;
	UILabel *name = (UILabel *)[cell.contentView viewWithTag:kNameLabelTag];
	name.text = [rowData objectForKey:@"Name"];
	
	
	UILabel *address = (UILabel *)[cell.contentView viewWithTag:kAddressLabelTag];
	address.text = [rowData objectForKey:@"Address"];
	
	
    return cell;
}


- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
 	NSUInteger selectedSite = [indexPath row]+1;
	if (selectedSite == 1){
		NSLog(@"nrbuttonpressed if = 1 executed");
		NSString *viewControllerName = @"recipeOneViewController";
		childController = [[recipeOneViewController alloc] initWithNibName:viewControllerName bundle:nil];
	}
	if (selectedSite == 2){
		NSLog(@"nrbuttonpressed if = 2 executed");
		NSString *viewControllerName = @"recipeTwoViewController";
		childController = (recipeOneViewController *)[[recipeTwoViewController alloc] initWithNibName:viewControllerName bundle:nil];
	}
	if (selectedSite == 3){
		NSLog(@"nrbuttonpressed if = 3 executed");
		NSString *viewControllerName = @"recipeThreeViewController";
		childController = (recipeOneViewController *)[[recipeThreeViewController alloc] initWithNibName:viewControllerName bundle:nil];
	}
	if (selectedSite == 4){
		NSLog(@"nrbuttonpressed if = 4 executed");
		NSString *viewControllerName = @"recipeFourViewController";
		childController = (recipeOneViewController *)[[recipeFourViewController alloc] initWithNibName:viewControllerName bundle:nil];
	}
	if (selectedSite == 5){
		NSLog(@"nrbuttonpressed if = 5 executed");
		NSString *viewControllerName = @"recipeFiveViewController";
		childController = (recipeOneViewController *)[[recipeFiveViewController alloc] initWithNibName:viewControllerName bundle:nil];
	}
	if (selectedSite == 6){
		NSLog(@"nrbuttonpressed if = 6 executed");
		NSString *viewControllerName = @"recipeSixViewController";
		childController = (recipeOneViewController *)[[recipeSixViewController alloc] initWithNibName:viewControllerName bundle:nil];
	}
	if (selectedSite == 7){
		NSLog(@"nrbuttonpressed if = 7 executed");
		NSString *viewControllerName = @"recipeSevenViewController";
		childController = (recipeOneViewController *)[[recipeSevenViewController alloc] initWithNibName:viewControllerName bundle:nil];
	}
	if (selectedSite == 8){
		NSLog(@"nrbuttonpressed if = 8 executed");
		NSString *viewControllerName = @"recipeEightViewController";
		childController = (recipeOneViewController *)[[recipeEightViewController alloc] initWithNibName:viewControllerName bundle:nil];
	}
		
    if (selectedSite == 9){
		NSLog(@"nrbuttonpressed if = 9 executed");
		NSString *viewControllerName = @"recipeNineViewController";
		childController = (recipeOneViewController *)[[recipeNineViewController alloc] initWithNibName:viewControllerName bundle:nil];
	}
    if (selectedSite == 10){
		NSLog(@"nrbuttonpressed if = 10 executed");
		NSString *viewControllerName = @"recipeTenViewController";
		childController = (recipeOneViewController *)[[recipeTenViewController alloc] initWithNibName:viewControllerName bundle:nil];
	}
    if (selectedSite == 11){
		NSLog(@"nrbuttonpressed if = 11 executed");
		NSString *viewControllerName = @"recipeElevenViewController";
		childController = (recipeOneViewController *)[[recipeElevenViewController alloc] initWithNibName:viewControllerName bundle:nil];
	}
    if (selectedSite == 12){
		NSLog(@"nrbuttonpressed if = 12 executed");
		NSString *viewControllerName = @"recipeTwelveViewController";
		childController = (recipeOneViewController *)[[recipeTwelveViewController alloc] initWithNibName:viewControllerName bundle:nil];
	}
    if (selectedSite == 13){
		NSLog(@"nrbuttonpressed if = 13 executed");
		NSString *viewControllerName = @"recipeThirteenViewController";
		childController = (recipeOneViewController *)[[recipeThirteenViewController alloc] initWithNibName:viewControllerName bundle:nil];
	}



	childController.hidesBottomBarWhenPushed = YES;
	//childController.backButtonName = @"Home";
	[self.navigationController pushViewController:childController animated:YES];	
}



-(void)viewWillDisppear:(BOOL)animated
{
	NSLog (@"viewwilldisappear executed");
	[super viewWillDisappear:animated];
}


- (void)dealloc {
	NSLog (@"recipeview dealloc");
    [listData release];
	[recipeTableView release];
	[super dealloc];
}


@end

