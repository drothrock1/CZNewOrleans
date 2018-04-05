//
//  RecipePhotoViewController.h
//  CocktailZenNewOrleans
//
//  Created by Diane on 7/5/10.
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>


@interface RecipePhotoViewController : UIViewController {
	@private
		NSString *photoName;
		UIImageView *imageView;
}

@property(nonatomic, retain) NSString *photoName;
@property(nonatomic, retain) UIImageView *imageView;

@end
