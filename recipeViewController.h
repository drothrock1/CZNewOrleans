//
//  recipeViewController.h
//  CocktailZenNewOrleans
//
//  Created by Brad on 6/18/10.
//  Copyright 2010 __Rothrock Group, LLC__. All rights reserved.
//

#import <UIKit/UIKit.h>

@class recipeOneViewController;


@interface recipeViewController : UITableViewController {
	NSArray *listData;
	recipeOneViewController *childController;
	UITableView	*recipeTableView;
	
}

@property (nonatomic, retain) IBOutlet UITableView *recipeTableView;
@property (nonatomic, retain) NSArray *listData;

@end
