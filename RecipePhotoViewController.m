    //
//  RecipePhotoViewController.m
//  CocktailZenNewOrleans
//
//  Created by Diane on 7/5/10.
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//

#import "RecipePhotoViewController.h"


@implementation RecipePhotoViewController

@synthesize photoName;
@synthesize imageView;

- (void)loadView {
	
	self.title = photoName;
	imageView = [[UIImageView alloc] initWithFrame:[UIScreen mainScreen].applicationFrame];
    imageView.autoresizingMask = UIViewAutoresizingFlexibleHeight | UIViewAutoresizingFlexibleWidth;
    imageView.contentMode = UIViewContentModeScaleAspectFit;
    imageView.backgroundColor = [UIColor blackColor];
    self.view = imageView;
}

- (void)viewWillAppear:(BOOL)animated {
	UIImage *photo = [UIImage imageNamed:[NSString stringWithFormat:@"%@.png", photoName]];
	imageView.image = photo;
}


- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation {
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}


- (void)dealloc {
    [imageView release];
    [photoName release];
    [super dealloc];
}


@end
